import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/screen/home/home_api.dart';
import 'package:uptime_clone/screen/home/home_model.dart';

class HomePageDataNotifier extends StateNotifier<HomePageData> {
  HomePageDataNotifier() : super(HomePageData.init());

  loadData() async {
    state = state.copyWith(isLoadingUser: true, isLoadingFeatureItems: true);
    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(user: User(name: "MRDS"), isLoadingUser: false);
    await Future.delayed(const Duration(seconds: 2));
    final data = await LearningPathAPI.fetchCategoriesFeatureList();
    state = state.copyWith(featureItems: data, isLoadingFeatureItems: false);
  }

  updateOffset(double offset) {
    state = state.copyWith(scrollOffset: offset);
  }

  double get scrollOffset => state.scrollOffset;
  List<LearningPathCategory> get featureItems => state.featureItems;
}

final homePageDataProvider =
    StateNotifierProvider<HomePageDataNotifier, HomePageData>(
  (ref) {
    final notifier = HomePageDataNotifier();
    notifier.loadData();
    return notifier;
  },
);
