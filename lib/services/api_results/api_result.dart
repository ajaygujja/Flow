import 'package:flow/model/feelings_model.dart';
import 'package:flow/services/network_exceptions/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required FeelingsModel data}) = Success<T>;
  const factory ApiResult.failure({required NetworkExceptions error}) =
      Failure<T>;
}
