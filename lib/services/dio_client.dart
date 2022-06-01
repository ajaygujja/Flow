import 'dart:io';

import 'package:dio/dio.dart';

import '../common/constant.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }
const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class DioClient {
  Dio? dioInstance;
  final String? baseUrl;

  static Map<String, String> header() =>
      {'Content-Type': 'application/json; charset=UTF-8'};

  DioClient({
    this.baseUrl,
    Dio? dio,
  }) {
    dioInstance = dio ?? Dio();
    dioInstance!
      ..options.baseUrl = baseUrl!
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..httpClientAdapter
      ..options.headers = header();
    initInterceptors();
  }

  void initInterceptors() {
    dioInstance!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          logger.i(
              'REQUEST[${requestOptions.method}] => PATH: ${requestOptions.path}'
              ' => REQUEST VALUES: ${requestOptions.queryParameters} => HEADERS: ${requestOptions.headers}');
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          logger.i('RESPONSE uri => ${response.realUri}');
          logger
              .i('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
          return handler.next(response);
        },
        onError: (err, handler) {
          logger.i('Error[${err.response?.statusCode}]');
          return handler.next(err);
        },
      ),
    );
  }

  Future<dynamic> request({
    required String url,
    required Method method,
    Map<String, dynamic>? params,
  }) async {
    Response<String> response;
    try {
      if (method == Method.POST) {
        response = await dioInstance!.post(url, data: params);
      } else if (method == Method.DELETE) {
        response = await dioInstance!.delete(url);
      } else if (method == Method.PATCH) {
        response = await dioInstance!.patch(url);
      } else {
        response = await dioInstance!.get(url, queryParameters: params);
      }
      return response;
    } on SocketException catch (e) {
      throw SocketException(e.toString());
    } on FormatException {
      throw const FormatException('Bad response format');
    } catch (e) {
      rethrow;
    }
  }
}
