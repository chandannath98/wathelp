import 'package:jobpilot/src/domain/server/config/request_handler.dart';

export 'api/api_config.dart';
export './response_wrapper.dart';

class ServerRepo {
  final requestHandler = RequestHandler.find;
}
