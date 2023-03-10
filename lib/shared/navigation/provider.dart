import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/screen/browse/browse_screen.dart';
import 'package:uptime_clone/screen/home/home_screen.dart';
import 'package:uptime_clone/screen/learn/learn_screen.dart';
import 'package:uptime_clone/screen/profile/profile_screen.dart';
import 'package:uptime_clone/shared/ioc.dart';
import 'package:vrouter/vrouter.dart';

class DashboardItemData {
  final IconData icon;
  final Color color;
  final String label;
  final String path;

  DashboardItemData({
    required this.icon,
    required this.color,
    required this.label,
    required this.path,
  });
}

class DashboardNavigatorNotifier extends StateNotifier<int> {
  DashboardNavigatorNotifier() : super(0);

  List<DashboardItemData> get items => [
        DashboardItemData(
          icon: FontAwesomeIcons.house,
          color: Colors.transparent,
          label: 'Home',
          path: HomeScreen.path,
        ),
        DashboardItemData(
          icon: FontAwesomeIcons.magnifyingGlass,
          color: Colors.transparent,
          label: 'Browse',
          path: BrowseScreen.path,
        ),
        DashboardItemData(
          icon: FontAwesomeIcons.starOfLife,
          color: Colors.transparent,
          label: 'Learn',
          path: LearnScreen.path,
        ),
        DashboardItemData(
          icon: FontAwesomeIcons.person,
          color: Colors.transparent,
          label: 'Profile',
          path: ProfileScreen.path,
        )
      ];

  List<String> get paths => [
        HomeScreen.path,
        BrowseScreen.path,
        LearnScreen.path,
        ProfileScreen.path
      ];

  int get currentIndex {
    final possibleDashboardItem =
        paths.indexWhere((element) => context.vRouter.url.contains(element));
    final possibleProviousDashboardItem =
        paths.indexWhere((element) => context.vRouter.url.contains(element));
    return possibleDashboardItem != -1
        ? possibleDashboardItem
        : possibleProviousDashboardItem != -1
            ? possibleProviousDashboardItem
            : 0;
  }

  BuildContext get context => ioc.read(navigationKeyProvider).currentContext!;

  void setCurrentIndex(int index) {
    logger.d(index);
    state = index;
    context.vRouter.to(paths[index]);
  }

  void navigateTo(
    String path, {
    Map<String, String> queryParameters = const {},
  }) {
    logger.d(path);
    context.vRouter.to(path, queryParameters: queryParameters);
  }

  void navigateBack() {
    if (!context.vRouter.historyCanBack()) return;
    context.vRouter.historyBack();
  }

  bool get canNavigateBack => context.vRouter.historyCanBack();
}

final dashboardNavigatorProvider =
    StateNotifierProvider<DashboardNavigatorNotifier, int>(
  (ref) => DashboardNavigatorNotifier(),
);

final navigationKeyProvider = Provider((ref) {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  return navigatorKey;
});
