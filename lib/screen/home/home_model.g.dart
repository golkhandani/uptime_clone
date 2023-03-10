// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_APIResponse<T> _$$_APIResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_APIResponse<T>(
      docs: (json['docs'] as List<dynamic>).map(fromJsonT).toList(),
      status: json['status'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_APIResponseToJson<T>(
  _$_APIResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'docs': instance.docs.map(toJsonT).toList(),
      'status': instance.status,
      'date': instance.date.toIso8601String(),
    };

_$_LearningPathCategory _$$_LearningPathCategoryFromJson(
        Map<String, dynamic> json) =>
    _$_LearningPathCategory(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      summary: json['summary'] as String,
      total: json['total'] as int,
      tags: json['tags'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => LearningPathSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LearningPathCategoryToJson(
        _$_LearningPathCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'summary': instance.summary,
      'total': instance.total,
      'tags': instance.tags,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'items': instance.items,
    };

_$_LearningPathSummary _$$_LearningPathSummaryFromJson(
        Map<String, dynamic> json) =>
    _$_LearningPathSummary(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String,
      summary: json['summary'] as String,
      score: json['score'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      author: AuthorSummary.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LearningPathSummaryToJson(
        _$_LearningPathSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'summary': instance.summary,
      'score': instance.score,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'author': instance.author,
    };

_$_AuthorSummary _$$_AuthorSummaryFromJson(Map<String, dynamic> json) =>
    _$_AuthorSummary(
      id: json['id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_AuthorSummaryToJson(_$_AuthorSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
