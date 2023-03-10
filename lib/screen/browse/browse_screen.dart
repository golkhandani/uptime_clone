import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/main.dart';
import 'package:uptime_clone/screen/dashboard/dashboard_screen.dart';
import 'package:uptime_clone/screen/search_result/search_result_screen.dart';
import 'package:uptime_clone/shared/navigation/provider.dart';
import 'package:uptime_clone/shared/theme/provider.dart';

class BrowseScreen extends HookConsumerWidget {
  static const path = '${DashboardScreen.path}/browse';
  static const name = 'BrowseScreen';
  const BrowseScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppBarWithLabel(label: 'Browse'),
      body: Center(
        child: Text(
          BrowseScreen.name,
          style: context.theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
