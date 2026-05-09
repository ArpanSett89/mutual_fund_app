import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutual_fund_app/application/scheme_list/scheme_list_bloc.dart';
import 'package:mutual_fund_app/application/user/user_bloc.dart';
import 'package:mutual_fund_app/domain/core/utils/error_utils.dart';
import 'package:mutual_fund_app/presentation/routes/router.gr.dart';
import 'package:mutual_fund_app/presentation/theme/colors.dart';

@RoutePage()
class SchemeListPage extends StatefulWidget {
  const SchemeListPage({super.key});

  @override
  State<SchemeListPage> createState() => _SchemeListPageState();
}

class _SchemeListPageState extends State<SchemeListPage> {
  Timer? _debounce;
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: BlocListener<SchemeListBloc, SchemeListState>(
          listenWhen: (previous, current) =>
              previous.schemesFailureOrSuccessOption !=
              current.schemesFailureOrSuccessOption,
          listener: (context, state) {
            state.schemesFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                final errorMessage = ErrorUtils.getErrorMessage(
                  context,
                  failure,
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(errorMessage),
                    backgroundColor: Colors.red,
                  ),
                );
              }, (success) async {}),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<UserBloc, UserState>(
                buildWhen: (previous, current) => previous.user != current.user,
                builder: (context, state) {
                  return Text(
                    state.user.fullName,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ThemeColors.white,
                    ),
                  );
                },
              ),
              Text(
                'Find and explore investment options',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: ThemeColors.white),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 10,
          children: [
            /// Search Bar
            BlocBuilder<SchemeListBloc, SchemeListState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading ||
                  previous.searchKey != current.searchKey ||
                  previous.filteredSchemes != current.filteredSchemes,
              builder: (context, state) {
                searchController.text = state.searchKey;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    onChanged: (value) {
                      if (_debounce?.isActive ?? false) {
                        _debounce?.cancel();
                      }

                      _debounce = Timer(const Duration(milliseconds: 400), () {
                        context.read<SchemeListBloc>().add(
                          SchemeListEvent.searchSchemeList(query: value),
                        );
                      });
                    },
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search schemes...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          context.read<SchemeListBloc>().add(
                            const SchemeListEvent.clearSearchSchemeList(),
                          );
                        },
                      ),
                      filled: true,

                      fillColor: ThemeColors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                );
              },
            ),

            /// Total count
            BlocBuilder<SchemeListBloc, SchemeListState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading ||
                  previous.searchKey != current.searchKey ||
                  previous.filteredSchemes != current.filteredSchemes,
              builder: (context, state) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Showing ${state.filteredSchemes.length} schemes',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                );
              },
            ),

            /// Content
            Expanded(
              child: BlocBuilder<SchemeListBloc, SchemeListState>(
                buildWhen: (previous, current) =>
                    previous.isLoading != current.isLoading ||
                    previous.searchKey != current.searchKey ||
                    previous.filteredSchemes != current.filteredSchemes,
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: ThemeColors.primary,
                      ),
                    );
                  } else if (!state.isLoading &&
                      state.filteredSchemes.isEmpty) {
                    return _ErrorWidget(message: 'No schemes found');
                  } else {
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<SchemeListBloc>().add(
                          const SchemeListEvent.fetchSchemeList(),
                        );
                      },
                      child: ListView.builder(
                        itemCount: state.filteredSchemes.length,
                        itemBuilder: (context, index) {
                          final scheme = state.filteredSchemes[index];

                          return _SchemeCard(
                            schemeName: scheme.schemeName,
                            schemeCode: scheme.schemeCode.toString(),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SchemeCard extends StatelessWidget {
  final String schemeName;
  final String schemeCode;

  const _SchemeCard({required this.schemeName, required this.schemeCode});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<SchemeListBloc>().add(
          SchemeListEvent.fetchSchemeDetails(schemeId: schemeCode),
        );
        context.router.push(const SchemeDetailsPageRoute());
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.only(bottom: 18),
        decoration: BoxDecoration(
          color: ThemeColors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: ThemeColors.primary.withValues(alpha: 0.12),
          ),
          boxShadow: [
            BoxShadow(
              color: ThemeColors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    schemeName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Scheme Code: $schemeCode',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: ThemeColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  final String message;

  const _ErrorWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.access_time_rounded,
              size: 70,
              color: ThemeColors.red,
            ),

            Text(message, textAlign: TextAlign.center),

            ElevatedButton(
              onPressed: () {
                context.read<SchemeListBloc>().add(
                  const SchemeListEvent.fetchSchemeList(),
                );
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
