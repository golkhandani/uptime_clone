import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/shared/ioc.dart';
import 'package:uptime_clone/shared/navigation/provider.dart';
import 'package:uptime_clone/shared/navigation/router.dart';
import 'package:uptime_clone/shared/theme/model.dart';
import 'package:uptime_clone/shared/theme/provider.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  UptimeTheme get themeInfo => ioc.read(themeManagerProvider);
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final themeNotifier = ioc.read(themeManagerProvider.notifier);
  logger.d('Starting app');
  themeNotifier.setupOsThem();

  runApp(
    UncontrolledProviderScope(
      container: ioc,
      child: AppRouter(navigatorKey: ioc.read(navigationKeyProvider)),
    ),
  );
}
