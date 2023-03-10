import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/main.dart';
import 'package:uptime_clone/shared/theme/model.dart';
import 'package:uptime_clone/shared/theme/provider.dart';

class SearchBoxWithIcon extends HookConsumerWidget {
  static const hero = 'SearchBoxWithIcon';
  final bool isEnabled;
  const SearchBoxWithIcon({super.key, this.isEnabled = true});

  @override
  Widget build(BuildContext context, ref) {
    final theme = ref.watch(themeManagerProvider);
    final myFocusNode = FocusNode();
    FocusScope.of(context).requestFocus(myFocusNode);
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          Expanded(
            child: Autocomplete(
              optionsBuilder: (TextEditingValue textEditingValue) {
                return const Iterable<String>.empty();
              },
              fieldViewBuilder: (
                BuildContext context,
                TextEditingController textEditingController,
                FocusNode focusNode,
                VoidCallback onFieldSubmitted,
              ) {
                return TextFormField(
                  focusNode: myFocusNode,
                  enabled: isEnabled,
                  controller: textEditingController,
                  style: context.theme.textTheme.bodyLarge,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: UptimeTheme.leftRadius,
                      borderSide: BorderSide(
                        color: context.theme.inputDecorationTheme.enabledBorder!
                            .borderSide.color,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: UptimeTheme.leftRadius,
                      borderSide: BorderSide(
                        color: context.theme.inputDecorationTheme.enabledBorder!
                            .borderSide.color,
                      ),
                    ),
                    hintText: "what you are looking for!",
                  ),
                );
              },
            ),
          ),
          Material(
            borderRadius: UptimeTheme.rightRadius,
            elevation: 2,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: UptimeTheme.rightRadius,
                color: context
                    .theme.inputDecorationTheme.enabledBorder!.borderSide.color,
              ),
              child: InkWell(
                borderRadius: UptimeTheme.rightRadius,
                highlightColor: context.theme.highlightColor,
                splashColor: context.theme.splashColor,
                onTap: () => {},
                child: ClipRRect(
                  borderRadius: UptimeTheme.rightRadius,
                  child: SizedBox(
                    width: 48,
                    height: 54,
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
