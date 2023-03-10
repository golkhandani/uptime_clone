import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/screen/dashboard/dashboard_screen.dart';
import 'package:uptime_clone/screen/search_result/search_result_screen.dart';
import 'package:uptime_clone/shared/theme/model.dart';
import 'package:uptime_clone/shared/theme/provider.dart';

class NotificationScreen extends HookConsumerWidget {
  static const path = '${DashboardScreen.path}/notification';
  static const name = 'NotificationScreen';
  const NotificationScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeManagerProvider);
    return Scaffold(
      appBar: const AppBarWithLabel(label: 'Notitifications'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: theme.name == ThemeName.light,
              onChanged: (value) {
                ref.read(themeManagerProvider.notifier).switchTheme(
                      value ? ThemeName.light : ThemeName.dark,
                    );
              },
            ),
            const Text(NotificationScreen.name),
          ],
        ),
      ),
    );
  }
}
