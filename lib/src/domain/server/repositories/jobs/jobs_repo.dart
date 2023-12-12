import 'dart:developer';

import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/category/job_category.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_details/job_detail_response/job_detail_response.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_type/job_type.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/search_response/paginated_job_list_response.dart';

import 'jobs_repo.dart';

export '../jobs/models/job/job.dart';
export '../jobs/models/search_query/search_query.dart';

class JobsRepository extends ServerRepo {
  Future<ResponseWrapper<PaginatedJobListResponse>> searchJobs({
    required int pageIndex,
    required int pageSize,
    SearchQuery? query,
  }) async {
    try {
      final response = await requestHandler.get(
        API.job,
        queryParams: {
          "page": pageIndex,
          "paginate": pageSize,
          ...?query?.toJson(),
        },
      );

      log("This search query : ${query?.toJson()}");
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => PaginatedJobListResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<List<JobType>>> fetchJobTypes() async {
    try {
      final response = await requestHandler.get(API.jobTypes);
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (jobData) => JobType.fromJson(jobData),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<List<JobCategory>>> fetchJobCategories() async {
    try {
      final response = await requestHandler.get(API.jobCategories);
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => (json as List)
            .map(
              (jobData) => JobCategory.fromJson(jobData),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<JobDetailResponse>> fetchSingleJobDetails(
      String slug) async {
    try {
      final endpoint = "${API.job}/$slug";
      final response = await requestHandler.get(endpoint);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => JobDetailResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
