import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uptime_clone/main.dart';
import 'package:uptime_clone/screen/dashboard/dashboard_screen.dart';
import 'package:uptime_clone/shared/component/search_box_with_icon.dart';
import 'package:uptime_clone/shared/navigation/provider.dart';

class SearchResultScreen extends StatefulHookConsumerWidget {
  static const path = '${DashboardScreen.path}/search';
  static const name = 'SearchResultScreen';
  const SearchResultScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchResultScreenState();
}

class _SearchResultScreenState extends ConsumerState<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    final navigator = ref.watch(dashboardNavigatorProvider.notifier);
    return Scaffold(
      appBar: const AppBarWithLabel(
        label: 'Search',
        withBackButton: true,
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              height: 48,
              child: const Hero(
                tag: SearchBoxWithIcon.hero,
                child: SearchBoxWithIcon(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AppBarWithLabel extends HookConsumerWidget
    implements PreferredSizeWidget {
  const AppBarWithLabel({
    super.key,
    required this.label,
    this.withBackButton = true,
  });

  final String label;
  final bool withBackButton;

  @override
  Widget build(BuildContext context, ref) {
    final navigator = ref.watch(dashboardNavigatorProvider.notifier);
    return AppBar(
      backgroundColor: context.theme.primaryColor,
      shadowColor: context.theme.shadowColor,
      elevation: 10,
      title: Text(
        label,
        style: context.theme.textTheme.headlineSmall,
      ),
      automaticallyImplyLeading: withBackButton && navigator.canNavigateBack,
      leading: withBackButton
          ? BackButton(
              color: context.theme.textTheme.headlineSmall!.color,
              onPressed: () {
                navigator.navigateBack();
              },
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
