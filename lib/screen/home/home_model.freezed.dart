// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

APIResponse<T> _$APIResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _APIResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$APIResponse<T> {
  List<T> get docs => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIResponseCopyWith<T, APIResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseCopyWith<T, $Res> {
  factory $APIResponseCopyWith(
          APIResponse<T> value, $Res Function(APIResponse<T>) then) =
      _$APIResponseCopyWithImpl<T, $Res, APIResponse<T>>;
  @useResult
  $Res call({List<T> docs, int status, DateTime date});
}

/// @nodoc
class _$APIResponseCopyWithImpl<T, $Res, $Val extends APIResponse<T>>
    implements $APIResponseCopyWith<T, $Res> {
  _$APIResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      docs: null == docs
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<T>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_APIResponseCopyWith<T, $Res>
    implements $APIResponseCopyWith<T, $Res> {
  factory _$$_APIResponseCopyWith(
          _$_APIResponse<T> value, $Res Function(_$_APIResponse<T>) then) =
      __$$_APIResponseCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> docs, int status, DateTime date});
}

/// @nodoc
class __$$_APIResponseCopyWithImpl<T, $Res>
    extends _$APIResponseCopyWithImpl<T, $Res, _$_APIResponse<T>>
    implements _$$_APIResponseCopyWith<T, $Res> {
  __$$_APIResponseCopyWithImpl(
      _$_APIResponse<T> _value, $Res Function(_$_APIResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_$_APIResponse<T>(
      docs: null == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<T>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_APIResponse<T> implements _APIResponse<T> {
  _$_APIResponse(
      {required final List<T> docs, required this.status, required this.date})
      : _docs = docs;

  factory _$_APIResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_APIResponseFromJson(json, fromJsonT);

  final List<T> _docs;
  @override
  List<T> get docs {
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_docs);
  }

  @override
  final int status;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'APIResponse<$T>(docs: $docs, status: $status, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_APIResponse<T> &&
            const DeepCollectionEquality().equals(other._docs, _docs) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_docs), status, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_APIResponseCopyWith<T, _$_APIResponse<T>> get copyWith =>
      __$$_APIResponseCopyWithImpl<T, _$_APIResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_APIResponseToJson<T>(this, toJsonT);
  }
}

abstract class _APIResponse<T> implements APIResponse<T> {
  factory _APIResponse(
      {required final List<T> docs,
      required final int status,
      required final DateTime date}) = _$_APIResponse<T>;

  factory _APIResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_APIResponse<T>.fromJson;

  @override
  List<T> get docs;
  @override
  int get status;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_APIResponseCopyWith<T, _$_APIResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPathCategory _$LearningPathCategoryFromJson(Map<String, dynamic> json) {
  return _LearningPathCategory.fromJson(json);
}

/// @nodoc
mixin _$LearningPathCategory {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<LearningPathSummary> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathCategoryCopyWith<LearningPathCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathCategoryCopyWith<$Res> {
  factory $LearningPathCategoryCopyWith(LearningPathCategory value,
          $Res Function(LearningPathCategory) then) =
      _$LearningPathCategoryCopyWithImpl<$Res, LearningPathCategory>;
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      int total,
      String tags,
      DateTime createdAt,
      DateTime updatedAt,
      List<LearningPathSummary> items});
}

/// @nodoc
class _$LearningPathCategoryCopyWithImpl<$Res,
        $Val extends LearningPathCategory>
    implements $LearningPathCategoryCopyWith<$Res> {
  _$LearningPathCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? total = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LearningPathSummary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathCategoryCopyWith<$Res>
    implements $LearningPathCategoryCopyWith<$Res> {
  factory _$$_LearningPathCategoryCopyWith(_$_LearningPathCategory value,
          $Res Function(_$_LearningPathCategory) then) =
      __$$_LearningPathCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      int total,
      String tags,
      DateTime createdAt,
      DateTime updatedAt,
      List<LearningPathSummary> items});
}

/// @nodoc
class __$$_LearningPathCategoryCopyWithImpl<$Res>
    extends _$LearningPathCategoryCopyWithImpl<$Res, _$_LearningPathCategory>
    implements _$$_LearningPathCategoryCopyWith<$Res> {
  __$$_LearningPathCategoryCopyWithImpl(_$_LearningPathCategory _value,
      $Res Function(_$_LearningPathCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? total = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? items = null,
  }) {
    return _then(_$_LearningPathCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LearningPathSummary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathCategory implements _LearningPathCategory {
  const _$_LearningPathCategory(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.summary,
      required this.total,
      required this.tags,
      required this.createdAt,
      required this.updatedAt,
      required final List<LearningPathSummary> items})
      : _items = items;

  factory _$_LearningPathCategory.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathCategoryFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String summary;
  @override
  final int total;
  @override
  final String tags;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<LearningPathSummary> _items;
  @override
  List<LearningPathSummary> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'LearningPathCategory(id: $id, title: $title, thumbnail: $thumbnail, summary: $summary, total: $total, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      thumbnail,
      summary,
      total,
      tags,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathCategoryCopyWith<_$_LearningPathCategory> get copyWith =>
      __$$_LearningPathCategoryCopyWithImpl<_$_LearningPathCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathCategoryToJson(
      this,
    );
  }
}

abstract class _LearningPathCategory implements LearningPathCategory {
  const factory _LearningPathCategory(
          {required final String id,
          required final String title,
          required final String thumbnail,
          required final String summary,
          required final int total,
          required final String tags,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final List<LearningPathSummary> items}) =
      _$_LearningPathCategory;

  factory _LearningPathCategory.fromJson(Map<String, dynamic> json) =
      _$_LearningPathCategory.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String get summary;
  @override
  int get total;
  @override
  String get tags;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<LearningPathSummary> get items;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathCategoryCopyWith<_$_LearningPathCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPathSummary _$LearningPathSummaryFromJson(Map<String, dynamic> json) {
  return _LearningPathSummary.fromJson(json);
}

/// @nodoc
mixin _$LearningPathSummary {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  AuthorSummary get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathSummaryCopyWith<LearningPathSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathSummaryCopyWith<$Res> {
  factory $LearningPathSummaryCopyWith(
          LearningPathSummary value, $Res Function(LearningPathSummary) then) =
      _$LearningPathSummaryCopyWithImpl<$Res, LearningPathSummary>;
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      int score,
      DateTime createdAt,
      DateTime updatedAt,
      AuthorSummary author});

  $AuthorSummaryCopyWith<$Res> get author;
}

/// @nodoc
class _$LearningPathSummaryCopyWithImpl<$Res, $Val extends LearningPathSummary>
    implements $LearningPathSummaryCopyWith<$Res> {
  _$LearningPathSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? score = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorSummary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorSummaryCopyWith<$Res> get author {
    return $AuthorSummaryCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LearningPathSummaryCopyWith<$Res>
    implements $LearningPathSummaryCopyWith<$Res> {
  factory _$$_LearningPathSummaryCopyWith(_$_LearningPathSummary value,
          $Res Function(_$_LearningPathSummary) then) =
      __$$_LearningPathSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      String summary,
      int score,
      DateTime createdAt,
      DateTime updatedAt,
      AuthorSummary author});

  @override
  $AuthorSummaryCopyWith<$Res> get author;
}

/// @nodoc
class __$$_LearningPathSummaryCopyWithImpl<$Res>
    extends _$LearningPathSummaryCopyWithImpl<$Res, _$_LearningPathSummary>
    implements _$$_LearningPathSummaryCopyWith<$Res> {
  __$$_LearningPathSummaryCopyWithImpl(_$_LearningPathSummary _value,
      $Res Function(_$_LearningPathSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? summary = null,
    Object? score = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? author = null,
  }) {
    return _then(_$_LearningPathSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorSummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathSummary implements _LearningPathSummary {
  const _$_LearningPathSummary(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.summary,
      required this.score,
      required this.createdAt,
      required this.updatedAt,
      required this.author});

  factory _$_LearningPathSummary.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathSummaryFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final String summary;
  @override
  final int score;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final AuthorSummary author;

  @override
  String toString() {
    return 'LearningPathSummary(id: $id, title: $title, thumbnail: $thumbnail, summary: $summary, score: $score, createdAt: $createdAt, updatedAt: $updatedAt, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, summary,
      score, createdAt, updatedAt, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathSummaryCopyWith<_$_LearningPathSummary> get copyWith =>
      __$$_LearningPathSummaryCopyWithImpl<_$_LearningPathSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathSummaryToJson(
      this,
    );
  }
}

abstract class _LearningPathSummary implements LearningPathSummary {
  const factory _LearningPathSummary(
      {required final String id,
      required final String title,
      required final String thumbnail,
      required final String summary,
      required final int score,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final AuthorSummary author}) = _$_LearningPathSummary;

  factory _LearningPathSummary.fromJson(Map<String, dynamic> json) =
      _$_LearningPathSummary.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  String get summary;
  @override
  int get score;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  AuthorSummary get author;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathSummaryCopyWith<_$_LearningPathSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorSummary _$AuthorSummaryFromJson(Map<String, dynamic> json) {
  return _AuthorSummary.fromJson(json);
}

/// @nodoc
mixin _$AuthorSummary {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorSummaryCopyWith<AuthorSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorSummaryCopyWith<$Res> {
  factory $AuthorSummaryCopyWith(
          AuthorSummary value, $Res Function(AuthorSummary) then) =
      _$AuthorSummaryCopyWithImpl<$Res, AuthorSummary>;
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class _$AuthorSummaryCopyWithImpl<$Res, $Val extends AuthorSummary>
    implements $AuthorSummaryCopyWith<$Res> {
  _$AuthorSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorSummaryCopyWith<$Res>
    implements $AuthorSummaryCopyWith<$Res> {
  factory _$$_AuthorSummaryCopyWith(
          _$_AuthorSummary value, $Res Function(_$_AuthorSummary) then) =
      __$$_AuthorSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String username});
}

/// @nodoc
class __$$_AuthorSummaryCopyWithImpl<$Res>
    extends _$AuthorSummaryCopyWithImpl<$Res, _$_AuthorSummary>
    implements _$$_AuthorSummaryCopyWith<$Res> {
  __$$_AuthorSummaryCopyWithImpl(
      _$_AuthorSummary _value, $Res Function(_$_AuthorSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$_AuthorSummary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorSummary implements _AuthorSummary {
  const _$_AuthorSummary({required this.id, required this.username});

  factory _$_AuthorSummary.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorSummaryFromJson(json);

  @override
  final String id;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthorSummary(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorSummary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorSummaryCopyWith<_$_AuthorSummary> get copyWith =>
      __$$_AuthorSummaryCopyWithImpl<_$_AuthorSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorSummaryToJson(
      this,
    );
  }
}

abstract class _AuthorSummary implements AuthorSummary {
  const factory _AuthorSummary(
      {required final String id,
      required final String username}) = _$_AuthorSummary;

  factory _AuthorSummary.fromJson(Map<String, dynamic> json) =
      _$_AuthorSummary.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorSummaryCopyWith<_$_AuthorSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePageData {
  double get scrollOffset => throw _privateConstructorUsedError;
  bool get isLoadingUser => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  bool get isLoadingFeatureItems => throw _privateConstructorUsedError;
  List<LearningPathCategory> get featureItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageDataCopyWith<HomePageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageDataCopyWith<$Res> {
  factory $HomePageDataCopyWith(
          HomePageData value, $Res Function(HomePageData) then) =
      _$HomePageDataCopyWithImpl<$Res, HomePageData>;
  @useResult
  $Res call(
      {double scrollOffset,
      bool isLoadingUser,
      User user,
      bool isLoadingFeatureItems,
      List<LearningPathCategory> featureItems});
}

/// @nodoc
class _$HomePageDataCopyWithImpl<$Res, $Val extends HomePageData>
    implements $HomePageDataCopyWith<$Res> {
  _$HomePageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollOffset = null,
    Object? isLoadingUser = null,
    Object? user = null,
    Object? isLoadingFeatureItems = null,
    Object? featureItems = null,
  }) {
    return _then(_value.copyWith(
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      isLoadingUser: null == isLoadingUser
          ? _value.isLoadingUser
          : isLoadingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isLoadingFeatureItems: null == isLoadingFeatureItems
          ? _value.isLoadingFeatureItems
          : isLoadingFeatureItems // ignore: cast_nullable_to_non_nullable
              as bool,
      featureItems: null == featureItems
          ? _value.featureItems
          : featureItems // ignore: cast_nullable_to_non_nullable
              as List<LearningPathCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomePageDataCopyWith<$Res>
    implements $HomePageDataCopyWith<$Res> {
  factory _$$_HomePageDataCopyWith(
          _$_HomePageData value, $Res Function(_$_HomePageData) then) =
      __$$_HomePageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double scrollOffset,
      bool isLoadingUser,
      User user,
      bool isLoadingFeatureItems,
      List<LearningPathCategory> featureItems});
}

/// @nodoc
class __$$_HomePageDataCopyWithImpl<$Res>
    extends _$HomePageDataCopyWithImpl<$Res, _$_HomePageData>
    implements _$$_HomePageDataCopyWith<$Res> {
  __$$_HomePageDataCopyWithImpl(
      _$_HomePageData _value, $Res Function(_$_HomePageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollOffset = null,
    Object? isLoadingUser = null,
    Object? user = null,
    Object? isLoadingFeatureItems = null,
    Object? featureItems = null,
  }) {
    return _then(_$_HomePageData(
      scrollOffset: null == scrollOffset
          ? _value.scrollOffset
          : scrollOffset // ignore: cast_nullable_to_non_nullable
              as double,
      isLoadingUser: null == isLoadingUser
          ? _value.isLoadingUser
          : isLoadingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isLoadingFeatureItems: null == isLoadingFeatureItems
          ? _value.isLoadingFeatureItems
          : isLoadingFeatureItems // ignore: cast_nullable_to_non_nullable
              as bool,
      featureItems: null == featureItems
          ? _value._featureItems
          : featureItems // ignore: cast_nullable_to_non_nullable
              as List<LearningPathCategory>,
    ));
  }
}

/// @nodoc

class _$_HomePageData implements _HomePageData {
  const _$_HomePageData(
      {this.scrollOffset = 0,
      this.isLoadingUser = true,
      required this.user,
      this.isLoadingFeatureItems = true,
      final List<LearningPathCategory> featureItems = const []})
      : _featureItems = featureItems;

  @override
  @JsonKey()
  final double scrollOffset;
  @override
  @JsonKey()
  final bool isLoadingUser;
  @override
  final User user;
  @override
  @JsonKey()
  final bool isLoadingFeatureItems;
  final List<LearningPathCategory> _featureItems;
  @override
  @JsonKey()
  List<LearningPathCategory> get featureItems {
    if (_featureItems is EqualUnmodifiableListView) return _featureItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featureItems);
  }

  @override
  String toString() {
    return 'HomePageData(scrollOffset: $scrollOffset, isLoadingUser: $isLoadingUser, user: $user, isLoadingFeatureItems: $isLoadingFeatureItems, featureItems: $featureItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageData &&
            (identical(other.scrollOffset, scrollOffset) ||
                other.scrollOffset == scrollOffset) &&
            (identical(other.isLoadingUser, isLoadingUser) ||
                other.isLoadingUser == isLoadingUser) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoadingFeatureItems, isLoadingFeatureItems) ||
                other.isLoadingFeatureItems == isLoadingFeatureItems) &&
            const DeepCollectionEquality()
                .equals(other._featureItems, _featureItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      scrollOffset,
      isLoadingUser,
      user,
      isLoadingFeatureItems,
      const DeepCollectionEquality().hash(_featureItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomePageDataCopyWith<_$_HomePageData> get copyWith =>
      __$$_HomePageDataCopyWithImpl<_$_HomePageData>(this, _$identity);
}

abstract class _HomePageData implements HomePageData {
  const factory _HomePageData(
      {final double scrollOffset,
      final bool isLoadingUser,
      required final User user,
      final bool isLoadingFeatureItems,
      final List<LearningPathCategory> featureItems}) = _$_HomePageData;

  @override
  double get scrollOffset;
  @override
  bool get isLoadingUser;
  @override
  User get user;
  @override
  bool get isLoadingFeatureItems;
  @override
  List<LearningPathCategory> get featureItems;
  @override
  @JsonKey(ignore: true)
  _$$_HomePageDataCopyWith<_$_HomePageData> get copyWith =>
      throw _privateConstructorUsedError;
}
