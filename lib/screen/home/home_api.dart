import 'dart:async';

import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:uptime_clone/screen/home/home_model.dart';

final dio = Dio(BaseOptions(headers: {}));

mixin TDoc {
  fromJson(json);
}

class LearningPathAPI {
  static Future<List<LearningPathCategory>> fetchCategoriesFeatureList() async {
    const path =
        'https://raw.githubusercontent.com/golkhandani/nil_cross/main/mock/categories_featured.json';
    final response = await dio.get(path);
    final resJson = json.decode(response.data);
    final resParsed = APIResponse<LearningPathCategory>.fromJson(resJson, (p0) {
      return LearningPathCategory.fromJson(p0 as dynamic);
    });
    return resParsed.docs as List<LearningPathCategory>;
  }
}
