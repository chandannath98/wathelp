import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:jobpilot/src/domain/server/config/repository.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/language/language_response/language_response.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/personal_settings/personal_settings_response/personal_setting_data.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/personal_settings/update_personal_setting/update_personal_setting_response.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_delete/resume_delete_response.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_update/resume_update_response.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/resume/resume_upload/resume_upload_response.dart';
import 'package:jobpilot/src/domain/server/repositories/settings/models/social_settings/response/social_setting_data.dart';

import 'models/resume/resume_data/resume_data.dart';

enum CandidateSettingSections { personal, profile, social, contact }

class SettingsRepository extends ServerRepo {
  Future<ResponseWrapper<List<ResumeData>>> fetchResumeList() async {
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

  Future<ResponseWrapper<LanguageResponse>> fetchLanguages() async {
    try {
      final response = await requestHandler.get(API.languages);
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => LanguageResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<ResumeUploadResponse>> uploadResume({
    required File resumeFile,
    required String resumeName,
    required String resumeFileName,
  }) async {
    try {
      final data = {
        "name": resumeName,
        "resume_file": await MultipartFile.fromFile(
          resumeFile.path,
          filename: resumeFileName,
        ),
      };
      final response = await requestHandler.post(
        API.uploadCandidateResume,
        FormData.fromMap(data),
      );
      return ResponseWrapper.fromMap(
        response: response.data,
        print: true,
        status: response.statusCode,
        purse: (json) => ResumeUploadResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<ResumeUpdateResponse>> updateResume({
    File? resumeFile,
    String? resumeFileName,
    required int id,
    required String resumeName,
  }) async {
    try {
      final data = {
        "name": resumeName,
        if (resumeFile != null)
          "resume_file": await MultipartFile.fromFile(
            resumeFile.path,
            filename: resumeFileName,
          )
      };

      final filePath = "${API.updateCandidateResume}/$id";
      final response = await requestHandler.post(
        filePath,
        FormData.fromMap(data),
      );

      return ResponseWrapper.fromMap(
        response: response.data,
        print: true,
        status: response.statusCode,
        purse: (json) => ResumeUpdateResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<ResumeDeleteResponse>> deleteResume({
    required int id,
  }) async {
    try {
      final filePath = "${API.deleteCandidateResume}/$id";
      final response = await requestHandler.delete(filePath, {});

      return ResponseWrapper.fromMap(
        response: response.data,
        print: true,
        status: response.statusCode,
        purse: (json) => ResumeDeleteResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<PersonalSettingData>>
      fetchCandidatePersonalData() async {
    try {
      final response = await requestHandler.get(
        API.candidateSettings,
        queryParams: {"type": CandidateSettingSections.personal.name},
      );
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => PersonalSettingData.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<UpdatePersonalSettingResponse>>
      updateCandidatePersonalData({
    File? profileImage,
    required PersonalSettingData settingsData,
  }) async {
    final filteredData = settingsData.toJson()
      ..remove("image")
      ..remove("education_list")
      ..remove("experience_list");

    final data = {
      ...filteredData,
      if (profileImage != null)
        "image": await MultipartFile.fromFile(profileImage.path),
    };

    log("(PersonalSettingUpdate): $data");
    try {
      final response = await requestHandler.post(
        API.candidateSettings,
        FormData.fromMap({
          ...data,
          "type": CandidateSettingSections.personal.name,
        }),
      );
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => UpdatePersonalSettingResponse.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseWrapper<SocialSettingData>> fetchCandidateSocialData() async {
    try {
      final response = await requestHandler.get(
        API.candidateSettings,
        queryParams: {"type": CandidateSettingSections.social.name},
      );
      return ResponseWrapper.fromMap(
        response: response.data,
        status: response.statusCode,
        purse: (json) => SocialSettingData.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }
}
