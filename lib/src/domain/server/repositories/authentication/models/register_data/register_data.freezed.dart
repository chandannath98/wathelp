// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  switch (json['role']) {
    case 'company':
      return CompanyData.fromJson(json);
    case 'candidate':
      return CandidateData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'role', 'RegisterData',
          'Invalid union type "${json['role']}"!');
  }
}

/// @nodoc
mixin _$RegisterData {
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)
        company,
    required TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)
        candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)?
        company,
    TResult? Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)?
        candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)?
        company,
    TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)?
        candidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyData value) company,
    required TResult Function(CandidateData value) candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompanyData value)? company,
    TResult? Function(CandidateData value)? candidate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyData value)? company,
    TResult Function(CandidateData value)? candidate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res, RegisterData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res, $Val extends RegisterData>
    implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyDataImplCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$$CompanyDataImplCopyWith(
          _$CompanyDataImpl value, $Res Function(_$CompanyDataImpl) then) =
      __$$CompanyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'company') Company? company});

  $CompanyCopyWith<$Res>? get company;
}

/// @nodoc
class __$$CompanyDataImplCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res, _$CompanyDataImpl>
    implements _$$CompanyDataImplCopyWith<$Res> {
  __$$CompanyDataImplCopyWithImpl(
      _$CompanyDataImpl _value, $Res Function(_$CompanyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? company = freezed,
  }) {
    return _then(_$CompanyDataImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDataImpl with DiagnosticableTreeMixin implements CompanyData {
  const _$CompanyDataImpl(
      {@JsonKey(name: 'role') this.role,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'company') this.company});

  factory _$CompanyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDataImplFromJson(json);

  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'company')
  final Company? company;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterData.company(role: $role, name: $name, username: $username, email: $email, updatedAt: $updatedAt, createdAt: $createdAt, id: $id, imageUrl: $imageUrl, company: $company)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterData.company'))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('company', company));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDataImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, name, username, email,
      updatedAt, createdAt, id, imageUrl, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDataImplCopyWith<_$CompanyDataImpl> get copyWith =>
      __$$CompanyDataImplCopyWithImpl<_$CompanyDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)
        company,
    required TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)
        candidate,
  }) {
    return company(role, name, username, email, updatedAt, createdAt, id,
        imageUrl, this.company);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)?
        company,
    TResult? Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)?
        candidate,
  }) {
    return company?.call(role, name, username, email, updatedAt, createdAt, id,
        imageUrl, this.company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)?
        company,
    TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)?
        candidate,
    required TResult orElse(),
  }) {
    if (company != null) {
      return company(role, name, username, email, updatedAt, createdAt, id,
          imageUrl, this.company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyData value) company,
    required TResult Function(CandidateData value) candidate,
  }) {
    return company(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompanyData value)? company,
    TResult? Function(CandidateData value)? candidate,
  }) {
    return company?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyData value)? company,
    TResult Function(CandidateData value)? candidate,
    required TResult orElse(),
  }) {
    if (company != null) {
      return company(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDataImplToJson(
      this,
    );
  }
}

abstract class CompanyData implements RegisterData {
  const factory CompanyData(
      {@JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'company') final Company? company}) = _$CompanyDataImpl;

  factory CompanyData.fromJson(Map<String, dynamic> json) =
      _$CompanyDataImpl.fromJson;

  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @JsonKey(name: 'company')
  Company? get company;
  @override
  @JsonKey(ignore: true)
  _$$CompanyDataImplCopyWith<_$CompanyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CandidateDataImplCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$$CandidateDataImplCopyWith(
          _$CandidateDataImpl value, $Res Function(_$CandidateDataImpl) then) =
      __$$CandidateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'candidate') Candidate? candidate});

  $CandidateCopyWith<$Res>? get candidate;
}

/// @nodoc
class __$$CandidateDataImplCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res, _$CandidateDataImpl>
    implements _$$CandidateDataImplCopyWith<$Res> {
  __$$CandidateDataImplCopyWithImpl(
      _$CandidateDataImpl _value, $Res Function(_$CandidateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? candidate = freezed,
  }) {
    return _then(_$CandidateDataImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      candidate: freezed == candidate
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as Candidate?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CandidateCopyWith<$Res>? get candidate {
    if (_value.candidate == null) {
      return null;
    }

    return $CandidateCopyWith<$Res>(_value.candidate!, (value) {
      return _then(_value.copyWith(candidate: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CandidateDataImpl
    with DiagnosticableTreeMixin
    implements CandidateData {
  const _$CandidateDataImpl(
      {@JsonKey(name: 'role') this.role,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'candidate') this.candidate});

  factory _$CandidateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CandidateDataImplFromJson(json);

  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'candidate')
  final Candidate? candidate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterData.candidate(role: $role, name: $name, username: $username, email: $email, updatedAt: $updatedAt, createdAt: $createdAt, id: $id, imageUrl: $imageUrl, candidate: $candidate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterData.candidate'))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('candidate', candidate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandidateDataImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.candidate, candidate) ||
                other.candidate == candidate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, name, username, email,
      updatedAt, createdAt, id, imageUrl, candidate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CandidateDataImplCopyWith<_$CandidateDataImpl> get copyWith =>
      __$$CandidateDataImplCopyWithImpl<_$CandidateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)
        company,
    required TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)
        candidate,
  }) {
    return candidate(role, name, username, email, updatedAt, createdAt, id,
        imageUrl, this.candidate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)?
        company,
    TResult? Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)?
        candidate,
  }) {
    return candidate?.call(role, name, username, email, updatedAt, createdAt,
        id, imageUrl, this.candidate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'company') Company? company)?
        company,
    TResult Function(
            @JsonKey(name: 'role') String? role,
            @JsonKey(name: 'name') String? name,
            @JsonKey(name: 'username') String? username,
            @JsonKey(name: 'email') String? email,
            @JsonKey(name: 'updated_at') String? updatedAt,
            @JsonKey(name: 'created_at') String? createdAt,
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'image_url') String? imageUrl,
            @JsonKey(name: 'candidate') Candidate? candidate)?
        candidate,
    required TResult orElse(),
  }) {
    if (candidate != null) {
      return candidate(role, name, username, email, updatedAt, createdAt, id,
          imageUrl, this.candidate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyData value) company,
    required TResult Function(CandidateData value) candidate,
  }) {
    return candidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompanyData value)? company,
    TResult? Function(CandidateData value)? candidate,
  }) {
    return candidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyData value)? company,
    TResult Function(CandidateData value)? candidate,
    required TResult orElse(),
  }) {
    if (candidate != null) {
      return candidate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CandidateDataImplToJson(
      this,
    );
  }
}

abstract class CandidateData implements RegisterData {
  const factory CandidateData(
          {@JsonKey(name: 'role') final String? role,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'image_url') final String? imageUrl,
          @JsonKey(name: 'candidate') final Candidate? candidate}) =
      _$CandidateDataImpl;

  factory CandidateData.fromJson(Map<String, dynamic> json) =
      _$CandidateDataImpl.fromJson;

  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @JsonKey(name: 'candidate')
  Candidate? get candidate;
  @override
  @JsonKey(ignore: true)
  _$$CandidateDataImplCopyWith<_$CandidateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
