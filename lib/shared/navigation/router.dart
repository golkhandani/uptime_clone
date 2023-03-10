import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/screen/browse/browse_screen.dart';
import 'package:uptime_clone/screen/dashboard/dashboard_screen.dart';
import 'package:uptime_clone/screen/home/home_screen.dart';
import 'package:uptime_clone/screen/learn/learn_screen.dart';
import 'package:uptime_clone/screen/notification/notifiation_screen.dart';
import 'package:uptime_clone/screen/profile/profile_screen.dart';
import 'package:uptime_clone/screen/search_result/search_result_screen.dart';
import 'package:uptime_clone/screen/splash/splash_screen.dart';
import 'package:uptime_clone/shared/theme/model.dart';
import 'package:uptime_clone/shared/theme/provider.dart';
import 'package:vrouter/vrouter.dart';

class AppRouter extends HookConsumerWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  const AppRouter({
    super.key,
    required this.navigatorKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeManager = ref.watch(themeManagerProvider);

    return MaterialApp(
      home: VRouter(
        initialUrl: DashboardScreen.path,
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: true, // VRouter acts as a MaterialApp
        mode: VRouterMode.history,
        theme: ultravioletLightTheme,
        buildTransition: (animation, _, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
          return SlideTransition(
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(animation),
            child: child,
          );
        },

        routes: [
          VWidget(
            path: SplashScreen.path,
            name: SplashScreen.name,
            widget: const SplashScreen(),
          ),
          VNester(
            path: DashboardScreen.path,
            name: DashboardScreen.name,
            widgetBuilder: (child) => DashboardScreen(
              screen: child,
            ), // Child is the widget from nestedRoutes
            nestedRoutes: [
              VWidget(
                path: HomeScreen.path,
                name: HomeScreen.name,
                widget: const HomeScreen(),
              ),
              VWidget(
                path: BrowseScreen.path,
                name: BrowseScreen.name,
                widget: const BrowseScreen(),
                // buildTransition: (animation, _, child) {
                //   return SlideTransition(
                //     position: Tween(
                //       begin: const Offset(1.0, 0.0),
                //       end: const Offset(0.0, 0.0),
                //     ).animate(animation),
                //     child: child,
                //   );
                // },
              ),
              VWidget(
                path: SearchResultScreen.path,
                name: SearchResultScreen.name,
                widget: const SearchResultScreen(),
                // buildTransition: (animation, ___, child) {
                //   return FadeTransition(
                //     opacity: animation,
                //     child: child,
                //   );
                // },
              ),
              VWidget(
                path: LearnScreen.path,
                name: LearnScreen.name,
                widget: const LearnScreen(),
              ),
              VWidget(
                path: ProfileScreen.path,
                name: ProfileScreen.name,
                widget: const ProfileScreen(),
              ),
              VWidget(
                path: NotificationScreen.path,
                name: NotificationScreen.name,
                widget: const NotificationScreen(),
              ),
              VRouteRedirector(
                path: '*',
                redirectTo: HomeScreen.path,
              ),
            ],
          ),
          // This redirect every unknown routes to /login
          VRouteRedirector(
            redirectTo: '/splash',
            path: r'*',
          ),
        ],
      ),
    );
  }
}
