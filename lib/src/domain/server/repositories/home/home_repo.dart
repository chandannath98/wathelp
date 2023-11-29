import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/home/models/browse/browse_data/browse_data.dart';

class HomeRepository extends ServerRepo {
  Future<ResponseWrapper<BrowseData>> fetchBrowseData() async {
    try {
      final response = await requestHandler.get(API.homeBrowse);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => BrowseData.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
