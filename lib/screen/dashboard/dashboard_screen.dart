import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/main.dart';
import 'package:uptime_clone/shared/navigation/provider.dart';
import 'package:uptime_clone/shared/theme/provider.dart';

class DashboardScreen extends HookConsumerWidget {
  static const path = '/dashboard';
  static const name = 'DashboardScreen';

  final Widget screen;
  const DashboardScreen({super.key, required this.screen});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigator = ref.watch(dashboardNavigatorProvider.notifier);
    return Scaffold(
      body: screen,
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: context.theme.shadowColor,
              blurRadius: 16,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: BottomNavigationBar(
            elevation: 10,
            iconSize: 20,
            enableFeedback: false,
            useLegacyColorScheme: true,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: context.theme.scaffoldBackgroundColor,
            selectedLabelStyle: context.theme.textTheme.displayMedium,
            showUnselectedLabels: true,
            unselectedItemColor: context.theme.textTheme.bodyMedium!.color,
            unselectedLabelStyle:
                context.theme.textTheme.displayMedium!.copyWith(
              color: context.theme.hintColor,
            ),
            onTap: (value) => navigator.setCurrentIndex(value),
            currentIndex: navigator.currentIndex,
            items: navigator.items
                .map(
                  (e) => BottomNavigationBarItem(
                    icon: InkWell(
                      splashColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          e.icon,
                        ),
                      ),
                    ),
                    label: e.label,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
