import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/dashboard/candidate/model/candidate_dashboard_data.dart';

class CandidateDashboardRepository extends ServerRepo {
  Future<ResponseWrapper<CandidateDashboardData>>
      getCandidateDashboardData() async {
    try {
      final response = await requestHandler.get(API.candidateDashboard);
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => CandidateDashboardData.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
