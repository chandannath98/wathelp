import 'dart:convert';
import 'dart:developer';

typedef RawToDataPurse<Z> = Z Function(dynamic json);

class ResponseWrapper<C> {
  final int? status;
  String? message;
  dynamic rawData;
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
    required this.rawResponse,
    this.rawData,
    this.error,
    this.data,
  });

  /* Actual data pursing : Start*/

  late final C? data;
  bool get isError => error != null && data == null;
  bool get isSuccess => data != null && error == null;

  factory ResponseWrapper.fromMap({
    required dynamic response,
    required RawToDataPurse<C> purse,
    int? status,
    bool print = false,
  }) {
    if (print) {
      log(response.toString());
    }

    final resIsMap = response is Map;
    if (resIsMap) {
      Map<String, List<String>>? error;
      final map = Map<String, dynamic>.from(response);
      // Error purse!
      final hasErrorKey = map.containsKey('error') || map.containsKey('errors');
      if (hasErrorKey) {
        final isErrorString =
            (map.containsKey('error') && (map['error'] is String));

        if (isErrorString) {
          error = {
            "error": [map['error']!]
          };
        } else {
          final resData = Map<String, List>.from(map['errors']);
          error = resData
              .map((key, value) => MapEntry(key, List<String>.from(value)));
        }
      }

      // Data purse!
      final data = _purseResponse(map['data'], purse);
      return ResponseWrapper<C>(
        data: data,
        status: status,
        rawResponse: response,
        message: map['message'],
        rawData: map['data'],
        error: error,
      );
    } else {
      log("Response is map (${response is Map}): Response type -> ${response.runtimeType}");
      return ResponseWrapper<C>(
        status: status,
        rawResponse: response,
        message: "Response was sent in unknown format!",
        rawData: response,
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
      'rawResponse': rawData,
      'error': error,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'ResponseWrapper(status: $status, message: $message, rawResponse: $rawData, error: $error)';
  }
}

C? _purseResponse<C>(
  dynamic rawResponse,
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
