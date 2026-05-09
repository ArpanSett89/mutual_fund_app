import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutual_fund_app/domain/core/error/api_failures.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme.dart';
import 'package:mutual_fund_app/domain/scheme/entitis/scheme_details.dart';
import 'package:mutual_fund_app/domain/scheme/repository/i_scheme_repository.dart';

part 'scheme_list_event.dart';
part 'scheme_list_state.dart';
part 'scheme_list_bloc.freezed.dart';

class SchemeListBloc extends Bloc<SchemeListEvent, SchemeListState> {
  final ISchemeRepository schemeRepository;
  SchemeListBloc({required this.schemeRepository})
    : super(SchemeListState.initial()) {
    on<SchemeListEvent>(_onEvent);
  }
  Future<void> _onEvent(
    SchemeListEvent event,
    Emitter<SchemeListState> emit,
  ) async {
    await event.map(
      fetchSchemeList: (e) async {
        emit(
          state.copyWith(
            isLoading: true,
            schemesFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await schemeRepository.fetchSchemeList(
          searchKey: 'searchKey',
        );
        if (isClosed) return;

        await failureOrSuccess.fold(
          (_) {
            emit(
              state.copyWith(
                isLoading: false,
                schemesFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (schemes) async {
            emit(
              state.copyWith(
                isLoading: false,
                schemes: schemes,
                filteredSchemes: schemes,
                schemesFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },

      searchSchemeList: (e) async {
        if (e.query.isEmpty || state.isLoading) {
          return;
        }

        emit(
          state.copyWith(
            isLoading: true,
            searchKey: e.query,
            schemesFailureOrSuccessOption: none(),
          ),
        );
        final finalList = List<Scheme>.from(state.schemes);
        final modifiedSchemes = finalList.where((scheme) {
          return scheme.schemeName.toLowerCase().contains(
            e.query.toLowerCase(),
          );
        }).toList();
        if (isClosed) return;

        emit(
          state.copyWith(
            isLoading: false,
            filteredSchemes: modifiedSchemes,
            schemesFailureOrSuccessOption: none(),
          ),
        );
      },
      clearSearchSchemeList: (e) async {
        emit(
          state.copyWith(
            isLoading: false,
            searchKey: '',
            filteredSchemes: state.schemes,
            schemesFailureOrSuccessOption: none(),
          ),
        );
      },

      fetchSchemeDetails: (e) async {
        emit(
          state.copyWith(
            isFetchingDetails: true,
            schemesFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await schemeRepository.fetchSchemeDetails(
          schemeId: e.schemeId,
        );
        if (isClosed) return;

        await failureOrSuccess.fold(
          (_) {
            emit(
              state.copyWith(
                isFetchingDetails: false,
                schemesFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (schemeDetails) async {
            emit(
              state.copyWith(
                isFetchingDetails: false,
                schemeDetails: schemeDetails,
                schemesFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
