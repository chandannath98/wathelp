// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobDetailsImpl _$$JobDetailsImplFromJson(Map<String, dynamic> json) =>
    _$JobDetailsImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      vacancies: json['vacancies'] as String?,
      salary: json['salary'] as String?,
      minSalary: json['min_salary'] as int?,
      maxSalary: json['max_salary'] as int?,
      salaryMode: json['salary_mode'] as String?,
      customSalary: json['custom_salary'] as String?,
      jobType: json['job_type'] as String?,
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
      bookmarked: json['bookmarked'] as bool?,
      applied: json['applied'] as bool?,
      daysRemaining: json['days_remaining'] as String?,
      deadlineActive: json['deadline_active'] as bool?,
      postedAt: json['posted_at'] as String?,
      canApply: json['can_apply'] as bool?,
      location: json['location'] as String?,
      benefits: (json['benefits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      role: json['role'] as String?,
      experience: json['experience'] as String?,
      education: json['education'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JobDetailsImplToJson(_$JobDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'vacancies': instance.vacancies,
      'salary': instance.salary,
      'min_salary': instance.minSalary,
      'max_salary': instance.maxSalary,
      'salary_mode': instance.salaryMode,
      'custom_salary': instance.customSalary,
      'job_type': instance.jobType,
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
      'bookmarked': instance.bookmarked,
      'applied': instance.applied,
      'days_remaining': instance.daysRemaining,
      'deadline_active': instance.deadlineActive,
      'posted_at': instance.postedAt,
      'can_apply': instance.canApply,
      'location': instance.location,
      'benefits': instance.benefits,
      'tags': instance.tags,
      'role': instance.role,
      'experience': instance.experience,
      'education': instance.education,
      'company': instance.company,
    };
