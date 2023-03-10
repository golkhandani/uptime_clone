// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/main.dart';
import 'package:uptime_clone/screen/dashboard/dashboard_screen.dart';
import 'package:uptime_clone/screen/splash/splash_provider.dart';
import 'package:uptime_clone/shared/ioc.dart';
import 'package:uptime_clone/shared/navigation/provider.dart';

class SplashScreen extends StatefulHookConsumerWidget {
  static const path = '/splash';
  static const name = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreen();
}

class _SplashScreen extends ConsumerState<SplashScreen> {
  final Duration duration = const Duration(milliseconds: 1000);

  @override
  void initState() {
    //
    super.initState();
    runDelayed();
  }

  Future<void> runDelayed() async {
    final navigator = ref.read(dashboardNavigatorProvider.notifier);

    await Future.delayed(
      const Duration(seconds: 3),
      () => navigator.navigateTo(DashboardScreen.path),
    );
  }

  @override
  Widget build(BuildContext context) {
    final animation = useAnimationController(
      duration: duration,
      upperBound: 1,
    );
    animation.addStatusListener((status) {
      logger.d(animation.status);
      if (status == AnimationStatus.completed) {
        animation.repeat();
      }
    });
    animation.forward();
    logger.d(animation.value);

    final splashData = ref.read(splashDataProvider);
    logger.d("name, ${context.themeInfo.name}");

    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8, right: 4),
                  child: AnimatedBuilder(
                    animation: animation,
                    builder: (context, child) => Transform.rotate(
                      angle: animation.value,
                      child: Icon(
                        splashData.iconData,
                        color: context.theme.primaryColorLight,
                        size: 45,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      splashData.title,
                      style: context.theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
