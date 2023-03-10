import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

final fakeImages = [
  'https://unsplash.com/photos/hNzhbsaxvV0/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2ODc3&force=true&w=1920',
  'https://unsplash.com/photos/LcPYvrzwYCY/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2ODgz&force=true&w=1920',
  'https://unsplash.com/photos/PiHQTuXjNg0/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2ODg5&force=true&w=1920',
  'https://unsplash.com/photos/JLwfC6Uabss/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2ODkz&force=true&w=1920',
  'https://unsplash.com/photos/rIWLbRX0Sas/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2ODk2&force=true&w=1920',
  'https://unsplash.com/photos/V-NkAp2M8hs/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2ODk5&force=true&w=1920',
  'https://unsplash.com/photos/VitSTOycFf0/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2OTA3&force=true&w=1920',
  'https://unsplash.com/photos/NjebajwFDxc/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjc2MTY2OTE0&force=true&w=1920'
];

class User {
  final greating = 'Hello';
  final String name;
  User({
    required this.name,
  });
}

@Freezed(genericArgumentFactories: true)
class APIResponse<T> with _$APIResponse {
  factory APIResponse({
    required List<T> docs,
    required int status,
    required DateTime date,
  }) = _APIResponse;

  factory APIResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) =>
      _$APIResponseFromJson(json, fromJsonT);
}

@freezed
class LearningPathCategory with _$LearningPathCategory {
  const factory LearningPathCategory({
    required String id,
    required String title,
    required String thumbnail,
    required String summary,
    required int total,
    required String tags,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<LearningPathSummary> items,
  }) = _LearningPathCategory;

  factory LearningPathCategory.fromJson(Map<String, dynamic> json) =>
      _$LearningPathCategoryFromJson(json);
}

@freezed
class LearningPathSummary with _$LearningPathSummary {
  const factory LearningPathSummary({
    required String id,
    required String title,
    required String thumbnail,
    required String summary,
    required int score,
    required DateTime createdAt,
    required DateTime updatedAt,
    required AuthorSummary author,
  }) = _LearningPathSummary;

  factory LearningPathSummary.fromJson(Map<String, dynamic> json) =>
      _$LearningPathSummaryFromJson(json);
}

@freezed
class AuthorSummary with _$AuthorSummary {
  const factory AuthorSummary({
    required String id,
    required String username,
  }) = _AuthorSummary;

  factory AuthorSummary.fromJson(Map<String, dynamic> json) =>
      _$AuthorSummaryFromJson(json);
}

@freezed
class HomePageData with _$HomePageData {
  const factory HomePageData({
    @Default(0) double scrollOffset,
    @Default(true) bool isLoadingUser,
    required User user,
    @Default(true) bool isLoadingFeatureItems,
    @Default([]) List<LearningPathCategory> featureItems,
  }) = _HomePageData;

  factory HomePageData.init() =>
      HomePageData(scrollOffset: 0, user: User(name: ''));
}
