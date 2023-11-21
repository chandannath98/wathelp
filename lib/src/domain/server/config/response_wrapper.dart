import 'dart:convert';
import 'dart:developer';

typedef RawToDataPurse<Z> = Z Function(dynamic json);

class ResponseWrapper<C> {
  final int? status;
  String? message;
  dynamic rawResponse;
  Map<String, List<String>>? error;

  String get errorMsg => (isError)
      ? (error?.entries.firstOrNull?.value.first ??
          message ??
          "Unknown response error!")
      : "Request didn't finished with error!";

  ResponseWrapper({
    required this.status,
    required this.message,
    this.rawResponse,
    this.error,
    this.data,
  });

  /* Actual data pursing : Start*/

  late final C? data;
  bool get isError => error != null && data == null;
  bool get isSuccess => data != null && error == null;

  factory ResponseWrapper.fromMap({
    required dynamic rawData,
    required RawToDataPurse<C> purse,
    int? status,
    bool print = false,
  }) {
    if (print) {
      log(rawData.toString());
    }

    if (rawData is Map) {
      final map = Map<String, dynamic>.from(rawData);
      final isErrorString =
          (map.containsKey('error') && (map['error'] is String));
      final String? message = isErrorString ? map['error'] : map['message'];
      final data = _purseResponse(map['data'], purse);
      return ResponseWrapper<C>(
        data: data,
        status: status,
        message: message,
        rawResponse: map['data'],
        error: isErrorString
            ? {
                "error": [map['error']!]
              }
            : map['error'] == null
                ? null
                : Map<String, List<String>>.from(json.decode(map['error'])),
      );
    } else {
      return ResponseWrapper<C>(
        status: status,
        message: "Response was sent in unknown format!",
        rawResponse: rawData,
        error: {
          'response_error': ["Response was sent in unknown format!"],
        },
      );
    }
  }

  /* Actual data pursing : End*/

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'message': message,
      'rawResponse': rawResponse,
      'error': error,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ResponseWrapper(status: $status, message: $message, rawResponse: $rawResponse, error: $error)';
  }
}

C? _purseResponse<C>(
  Map<String, dynamic> rawResponse,
  RawToDataPurse<C> purserFunction,
) {
  try {
    return purserFunction(rawResponse);
  } catch (e, s) {
    log(
      "Tried to purse **${rawResponse.runtimeType} (to) ${C.runtimeType}! \n RawResponse => ${rawResponse.toString()}",
      error: e,
      stackTrace: s,
      name: "#RES_PURSE_ERROR",
    );
    return null;
  }
}
