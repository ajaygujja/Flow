import 'package:flow/services/network_exceptions/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

/// * the [ApiResult] class,
///
/// * in case of the success,
/// * it will return the data of T type
///
/// * in the case of failure,
/// * it will return a network exception.
@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required T data}) = Success<T>;
  const factory ApiResult.failure({required NetworkExceptions error}) =
      Failure<T>;
}
