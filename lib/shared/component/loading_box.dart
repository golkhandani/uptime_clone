import 'package:flutter/material.dart';
import 'package:uptime_clone/main.dart';

Widget kLoadingBox(BuildContext context) => Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(
          color: context.theme.textTheme.bodyMedium?.color ?? Colors.red,
          strokeWidth: 2,
        ),
      ),
    );

Widget kLoadingBar(BuildContext context) => Center(
      child: SizedBox(
        child: LinearProgressIndicator(
          color: context.theme.colorScheme.onBackground,
          backgroundColor: context.theme.colorScheme.primaryContainer,
          minHeight: 4,
        ),
      ),
    );
