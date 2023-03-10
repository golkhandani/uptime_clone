import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/screen/dashboard/dashboard_screen.dart';
import 'package:uptime_clone/screen/search_result/search_result_screen.dart';

class LearnScreen extends HookConsumerWidget {
  static const path = '${DashboardScreen.path}/learn';
  static const name = 'LearnScreen';
  const LearnScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppBarWithLabel(label: 'Learn'),
      body: Container(
        child: Center(child: Text(LearnScreen.name)),
      ),
    );
  }
}
