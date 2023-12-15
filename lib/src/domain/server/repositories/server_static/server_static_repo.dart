import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/server_static/popular_tag/popular_tag.dart';

class ServerStaticRepository extends ServerRepo {
  Future<ResponseWrapper<List<PopularTag>>> fetchPopularTags() async {
    try {
      final response = await requestHandler.get(API.popularTag);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (jobData) => PopularTag.fromJson(jobData),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
