// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_open_positions_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedOpenPositionsDataImpl _$$PaginatedOpenPositionsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedOpenPositionsDataImpl(
      currentPage: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OpenJob.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: json['from'] as int?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: json['per_page'] as int?,
      prevPageUrl: json['prev_page_url'] as String?,
      to: json['to'] as int?,
    );

Map<String, dynamic> _$$PaginatedOpenPositionsDataImplToJson(
        _$PaginatedOpenPositionsDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
    };

_$OpenJobImpl _$$OpenJobImplFromJson(Map<String, dynamic> json) =>
    _$OpenJobImpl(
      id: json['id'] as int?,
      companyId: json['company_id'] as int?,
      categoryId: json['category_id'] as int?,
      roleId: json['role_id'] as int?,
      experienceId: json['experience_id'] as int?,
      educationId: json['education_id'] as int?,
      jobTypeId: json['job_type_id'] as int?,
      salaryTypeId: json['salary_type_id'] as int?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      vacancies: json['vacancies'] as String?,
      minSalary: json['min_salary'] as int?,
      maxSalary: json['max_salary'] as int?,
      deadline: json['deadline'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      applyOn: json['apply_on'] as String?,
      applyEmail: json['apply_email'] as String?,
      applyUrl: json['apply_url'] as String?,
      featured: json['featured'] as bool?,
      featuredUntil: json['featured_until'] as String?,
      highlight: json['highlight'] as bool?,
      highlightUntil: json['highlight_until'] as String?,
      isRemote: json['is_remote'] as int?,
      totalViews: json['total_views'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      address: json['address'] as String?,
      exactLocation: json['exact_location'] as String?,
      neighborhood: json['neighborhood'] as String?,
      locality: json['locality'] as String?,
      place: json['place'] as String?,
      district: json['district'] as String?,
      postcode: json['postcode'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      long: json['long'] as String?,
      lat: json['lat'] as String?,
      parentJobId: json['parent_job_id'] as String?,
      waitingForEditApproval: json['waiting_for_edit_approval'] as int?,
      salaryMode: json['salary_mode'] as String?,
      customSalary: json['custom_salary'] as String?,
      companyName: json['company_name'] as String?,
      daysRemaining: json['days_remaining'] as String?,
      deadlineActive: json['deadline_active'] as bool?,
      canApply: json['can_apply'] as bool?,
      fullAddress: json['full_address'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      jobType: json['job_type'] == null
          ? null
          : JobType.fromJson(json['job_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenJobImplToJson(_$OpenJobImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'category_id': instance.categoryId,
      'role_id': instance.roleId,
      'experience_id': instance.experienceId,
      'education_id': instance.educationId,
      'job_type_id': instance.jobTypeId,
      'salary_type_id': instance.salaryTypeId,
      'title': instance.title,
      'slug': instance.slug,
      'vacancies': instance.vacancies,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'deadline': instance.deadline,
      'description': instance.description,
      'status': instance.status,
      'apply_on': instance.applyOn,
      'apply_email': instance.applyEmail,
      'apply_url': instance.applyUrl,
      'featured': instance.featured,
      'featured_until': instance.featuredUntil,
      'highlight': instance.highlight,
      'highlight_until': instance.highlightUntil,
      'is_remote': instance.isRemote,
      'total_views': instance.totalViews,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'address': instance.address,
      'exact_location': instance.exactLocation,
      'neighborhood': instance.neighborhood,
      'locality': instance.locality,
      'place': instance.place,
      'district': instance.district,
      'postcode': instance.postcode,
      'region': instance.region,
      'country': instance.country,
      'long': instance.long,
      'lat': instance.lat,
      'parent_job_id': instance.parentJobId,
      'waiting_for_edit_approval': instance.waitingForEditApproval,
      'salary_mode': instance.salaryMode,
      'custom_salary': instance.customSalary,
      'company_name': instance.companyName,
      'days_remaining': instance.daysRemaining,
      'deadline_active': instance.deadlineActive,
      'can_apply': instance.canApply,
      'full_address': instance.fullAddress,
      'company': instance.company,
      'job_type': instance.jobType,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      industryTypeId: json['industry_type_id'] as int?,
      organizationTypeId: json['organization_type_id'] as int?,
      teamSizeId: json['team_size_id'] as int?,
      logo: json['logo'] as String?,
      banner: json['banner'] as String?,
      establishmentDate: json['establishment_date'] as String?,
      website: json['website'] as String?,
      visibility: json['visibility'] as int?,
      profileCompletion: json['profile_completion'] as bool?,
      bio: json['bio'] as String?,
      vision: json['vision'] as String?,
      totalViews: json['total_views'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      address: json['address'] as String?,
      exactLocation: json['exact_location'] as String?,
      neighborhood: json['neighborhood'] as String?,
      locality: json['locality'] as String?,
      place: json['place'] as String?,
      district: json['district'] as String?,
      postcode: json['postcode'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      long: (json['long'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
      isProfileVerified: json['is_profile_verified'] as bool?,
      documentVerifiedAt: json['document_verified_at'] as String?,
      questionFeatureEnable: json['question_feature_enable'] as int?,
      logoUrl: json['logo_url'] as String?,
      bannerUrl: json['banner_url'] as String?,
      fullAddress: json['full_address'] as String?,
      user: json['user'] == null
          ? null
          : CompanyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'industry_type_id': instance.industryTypeId,
      'organization_type_id': instance.organizationTypeId,
      'team_size_id': instance.teamSizeId,
      'logo': instance.logo,
      'banner': instance.banner,
      'establishment_date': instance.establishmentDate,
      'website': instance.website,
      'visibility': instance.visibility,
      'profile_completion': instance.profileCompletion,
      'bio': instance.bio,
      'vision': instance.vision,
      'total_views': instance.totalViews,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'address': instance.address,
      'exact_location': instance.exactLocation,
      'neighborhood': instance.neighborhood,
      'locality': instance.locality,
      'place': instance.place,
      'district': instance.district,
      'postcode': instance.postcode,
      'region': instance.region,
      'country': instance.country,
      'long': instance.long,
      'lat': instance.lat,
      'is_profile_verified': instance.isProfileVerified,
      'document_verified_at': instance.documentVerifiedAt,
      'question_feature_enable': instance.questionFeatureEnable,
      'logo_url': instance.logoUrl,
      'banner_url': instance.bannerUrl,
      'full_address': instance.fullAddress,
      'user': instance.user,
    };

_$CompanyUserImpl _$$CompanyUserImplFromJson(Map<String, dynamic> json) =>
    _$CompanyUserImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      image: json['image'] as String?,
      role: json['role'] as String?,
      recentActivitiesAlert: json['recent_activities_alert'] as int?,
      jobExpiredAlert: json['job_expired_alert'] as int?,
      newJobAlert: json['new_job_alert'] as int?,
      shortlistedAlert: json['shortlisted_alert'] as int?,
      status: json['status'] as int?,
      isDemoField: json['is_demo_field'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      authType: json['auth_type'] as String?,
      googleId: json['google_id'] as String?,
      facebookId: json['facebook_id'] as String?,
      provider: json['provider'] as String?,
      providerId: json['provider_id'] as String?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$CompanyUserImplToJson(_$CompanyUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'image': instance.image,
      'role': instance.role,
      'recent_activities_alert': instance.recentActivitiesAlert,
      'job_expired_alert': instance.jobExpiredAlert,
      'new_job_alert': instance.newJobAlert,
      'shortlisted_alert': instance.shortlistedAlert,
      'status': instance.status,
      'is_demo_field': instance.isDemoField,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'auth_type': instance.authType,
      'google_id': instance.googleId,
      'facebook_id': instance.facebookId,
      'provider': instance.provider,
      'provider_id': instance.providerId,
      'image_url': instance.imageUrl,
    };

_$JobTypeImpl _$$JobTypeImplFromJson(Map<String, dynamic> json) =>
    _$JobTypeImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$JobTypeImplToJson(_$JobTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
