import 'package:freezed_annotation/freezed_annotation.dart';

part 'scheme.freezed.dart';

@freezed
class Scheme with _$Scheme {
  const Scheme._();

  const factory Scheme({
    required int schemeCode,
    required String schemeName,
    required String isinGrowth,
    required String isinDivReinvestment,
  }) = _Scheme;

  factory Scheme.empty() => const Scheme(
    schemeCode: 0,
    schemeName: '',
    isinGrowth: '',
    isinDivReinvestment: '',
  );
}
