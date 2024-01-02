import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/applied_jobs/paginated_applied_jobs/response/paginated_applied_jobs_response.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/apply_job/apply_job_response.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/bookmark/bookmark.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/category/job_category.dart';
import 'package:jobpilot/src/domain/server/repositories/jobs/models/job_alert/paginated_response/paginated_job_alert_response.dart';
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
      log("Job Search : ${query?.toJson()}");
      final response = await requestHandler.get(
        API.job,
        queryParams: {
          "page": pageIndex,
          "paginate": pageSize,
          ...?query?.toJson(),
        },
      );
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
    String slug,
  ) async {
    try {
      final endpoint = "${API.job}/$slug";
      final response = await requestHandler.get(endpoint);
      return ResponseWrapper.fromMap(
        response: response.data,
        print: true,
        status: response.statusCode,
        purse: (json) => JobDetailResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<Bookmark>> toggleJobBookmark(int jobId) async {
    try {
      final endpoint = "${API.candidateJob}/$jobId${API.jobBookmarkSuffix}";
      final response = await requestHandler.post(endpoint, {});
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => Bookmark.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<ApplyJobResponse>> candidateApplyJob({
    required int jobId,
    required int resumeId,
    required String coverLetter,
  }) async {
    try {
      final Map<String, dynamic> data = {
        "job_id": jobId,
        "resume_id": resumeId,
        "cover_letter": coverLetter,
      };

      final response = await requestHandler.post(
        API.candidateJobApply,
        FormData.fromMap(data),
      );
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => ApplyJobResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<PaginatedAppliedJobResponse>>
      fetchCandidateAppliedJobs({
    required int pageSize,
    required int pageIndex,
  }) async {
    try {
      final response = await requestHandler.get(
        API.candidateAppliedJob,
        queryParams: {
          "page": pageIndex,
          "paginate": pageSize,
        },
      );
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => PaginatedAppliedJobResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<PaginatedJobAlertResponse>> fetchCandidateJobAlerts({
    required int pageSize,
    required int pageIndex,
  }) async {
    try {
      final response = await requestHandler.get(
        API.candidateJobAlerts,
        queryParams: {
          "page": pageIndex,
          "paginate": pageSize,
        },
      );
      return ResponseWrapper.fromMap(
        print: true,
        response: response.data,
        status: response.statusCode,
        purse: (json) => PaginatedJobAlertResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
