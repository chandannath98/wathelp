import 'dart:developer' show log;

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:jobpilot/src/domain/local_storage/repositories/auth_storage/auth_storage.dart';
import 'package:jobpilot/src/domain/local_storage/repositories/static/static_storage.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/services/authentication/auth_controller.dart';
import 'package:jobpilot/src/utilities/scaffold_util.dart';

class RequestHandler extends GetxController {
  static RequestHandler get find => Get.find();
  String? get authToken => AuthStorage.currentToken;
  String? get langCode => StaticStorage.selectedLanguage?.code;
  int? get selectedCountryCode => StaticStorage.selectedCountry?.id;

  Dio get dio => Dio(
        BaseOptions(
          baseUrl: API.baseUrl,
          persistentConnection: true,
          connectTimeout: const Duration(seconds: 15),
          headers: {
            'connection': 'keep-alive',
            'accept': 'application/json',
            if (langCode != null) 'current_lang': langCode,
            if (authToken != null) 'Authorization': 'Bearer $authToken',
            if (langCode != null) 'selected_country': selectedCountryCode,
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
        exceptionType: error.type,
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
        exceptionType: error.type,
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
        exceptionType: error.type,
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
        exceptionType: error.type,
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

extension CustomDioExceptionMsg on DioExceptionType {
  String toPrettyDescription() {
    switch (this) {
      case DioExceptionType.connectionTimeout:
        return '(err: connection timeout) Check your internet connection.';
      case DioExceptionType.sendTimeout:
        return '(err: send timeout) Check your internet connection.';
      case DioExceptionType.receiveTimeout:
        return '(err: receive timeout) Check your internet connection.';
      case DioExceptionType.badCertificate:
        return 'bad certificate';
      case DioExceptionType.badResponse:
        return 'bad response';
      case DioExceptionType.cancel:
        return 'request cancelled';
      case DioExceptionType.connectionError:
        return '(err: connection error) Check your internet connection.';
      case DioExceptionType.unknown:
        return 'unknown';
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
  DioExceptionType exceptionType;
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
    this.exceptionType = DioExceptionType.unknown,
  }) {
    final details = "\x1B[35m/*\n"
        "method: ($method)\n"
        "url: ($url)\n"
        "token: (${RequestHandler.find.authToken})\n"
        "statusCode: ${statusCode ?? 0} \n"
        "errorMsg: '${msg ?? ''}' \n"
        "data: ${data ?? ''} \n"
        "res: ${res ?? ''} \n"
        "*/\x1B[0m\n";

    log(
      details,
      name: "#RequestException",
      time: DateTime.now(),
      error: error,
      stackTrace: trace,
    );
  }

  handleError({
    bool checkAuth = true,
    String defaultMessage = "Unknown server error!",
  }) async {
    try {
      final response = ResponseWrapper.fromMap(
        response: res?.data,
        purse: (json) {},
      );
      if (statusCode == 401 && checkAuth) {
        log("#AUTHENTICATION_ERROR#");
        await AuthController.find.handleTokenError();
        return;
      } else {
        print("Else status : ${res?.statusCode}");
        statusCode == null
            ? showToastError(exceptionType.toPrettyDescription())
            : showToastError(response.errorMsg);
      }
    } catch (e, s) {
      log("#HandleError", error: e, stackTrace: s);
      if (res?.data != null &&
          res?.data is Map &&
          res!.data!.containsKey("error")) {
        showToastError("${res!.data["error"]}");
      } else {
        showToastError(defaultMessage);
      }
    }
  }
}
