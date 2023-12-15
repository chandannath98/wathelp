import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_data.dart';

class SettingsRepository extends ServerRepo {
  Future<ResponseWrapper<List<ResumeData>>> fetchPopularTags() async {
    try {
      final response = await requestHandler.get(API.resumeList);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (jobData) => ResumeData.fromJson(jobData),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }
}
