import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/shared/theme/model.dart';

class ThemeManagerNotifier extends StateNotifier<UptimeTheme> {
  ThemeManagerNotifier() : super(UptimeTheme.light());
  setupOsThem() {
    final color = state.themeData.textTheme.bodyLarge!.color!;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: color, // Color for Android
        statusBarBrightness: color.computeLuminance() > 0.5
            ? Brightness.dark
            : Brightness.light // Dark == white status bar -- for IOS.
        ));
  }

  switchTheme(ThemeName theme) {
    late UptimeTheme newState;
    switch (theme) {
      case ThemeName.light:
        newState = UptimeTheme.light();
        break;
      case ThemeName.dark:
        newState = UptimeTheme.dark();
        break;
      default:
        newState = UptimeTheme.dark();
    }
    state = newState;
    setupOsThem();
  }
}

final themeManagerProvider =
    StateNotifierProvider<ThemeManagerNotifier, UptimeTheme>(
  (ref) => ThemeManagerNotifier(),
);
