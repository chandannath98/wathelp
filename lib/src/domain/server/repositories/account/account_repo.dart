import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/account/notification/paginated_notifications_response/paginated_notifications_response.dart';

import 'candidate/dashboard/candidate_dashboard_data.dart';

class AccountRepository extends ServerRepo {
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

  Future<ResponseWrapper<PaginatedNotificationsResponse>>
      getPaginatedNotifications({
    required int pageIndex,
    required int pageSize,
  }) async {
    try {
      final response = await requestHandler.get(
        API.notifications,
        queryParams: {
          "page": pageIndex,
          "paginate": pageSize,
        },
      );
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => PaginatedNotificationsResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
