import 'dart:developer' show log;

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class RequestHandler extends GetxController {
  static RequestHandler get find => Get.find();

  String? get authToken => AuthController.find.currentToken;

  Dio get dio => Dio(
        BaseOptions(
          baseUrl: API.baseUrl,
          headers: {
            'Connection': 'keep-alive',
            if (authToken != null) 'Authorization': 'Bearer $authToken',
          },
        ),
      );

  String get mainUrl => API.baseUrl;

  Future<Response> post(
    String url,
    dynamic params, {
    bool tokenNeeded = true,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.post(
        baseUrl ?? mainUrl + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
      return response;
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/POST",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stacktrace,
      );
    }
  }

  Future<Response> get(
    String url, {
    bool tokenNeeded = true,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final fullUrl = baseUrl ?? mainUrl + url;
      final response = await dio.get(
        fullUrl,
        options: options,
        queryParameters: queryParams,
      );
      return response;
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/GET",
        url: baseUrl ?? mainUrl + url,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/GET",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        error: error,
        trace: stacktrace,
      );
    }
  }

  Future<Response> put(
    String url,
    Map<String, dynamic> params, {
    bool tokenNeeded = true,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    Response response;
    try {
      response = await dio.put(
        baseUrl ?? mainUrl + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
      return response;
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/PUT",
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/PUT",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stacktrace,
      );
    }
  }

  Future<Response> delete(
    String url,
    Map<String, dynamic> params, {
    bool tokenNeeded = true,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) async {
    Response response;
    try {
      response = await dio.delete(
        baseUrl ?? mainUrl + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
      return response;
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/DELETE",
        url: baseUrl ?? mainUrl + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/DELETE",
        url: baseUrl ?? mainUrl + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stacktrace,
      );
    }
  }
}

class RequestException implements Exception {
  String url;
  String? msg;
  Object error;
  String method;
  Response? res;
  int? statusCode;
  StackTrace trace;
  dynamic data;

  RequestException({
    this.msg,
    this.res,
    this.data,
    this.statusCode,
    required this.url,
    required this.method,
    required this.error,
    required this.trace,
  }) {
    final details = """
\x1B[35m/*
method: ($method)
url: ($url)
statusCode: ${statusCode ?? 0}
errorMsg: "${msg ?? ''}"
data: ${data ?? ''}
res: ${res ?? ''}
*/\x1B[0m
""";

    log(
      details,
      name: "#RequestException",
      time: DateTime.now(),
      error: error,
      stackTrace: trace,
    );
  }

  handleError({String defaultMessage = "Unknown server error!"}) async {
    try {
      final response = ResponseWrapper.fromMap(
        rawData: data,
        purse: (json) {},
      );
      showToastError(response.errorMsg);
    } catch (_) {}
    if (res?.data != null &&
        res?.data is Map &&
        res!.data!.containsKey("error")) {
      showToastError("${res!.data["error"]}");
    } else {
      showToastError(defaultMessage);
    }
  }
}
