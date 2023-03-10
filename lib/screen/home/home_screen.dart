import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';
import 'package:uptime_clone/main.dart';
import 'package:uptime_clone/screen/browse/browse_screen.dart';
import 'package:uptime_clone/screen/dashboard/dashboard_screen.dart';
import 'package:uptime_clone/screen/home/home_model.dart';
import 'package:uptime_clone/screen/home/home_provider.dart';
import 'package:uptime_clone/screen/notification/notifiation_screen.dart';
import 'package:uptime_clone/screen/search_result/search_result_screen.dart';
import 'package:uptime_clone/shared/component/clipper_shadow.dart';
import 'package:uptime_clone/shared/component/intro_clipper.dart';
import 'package:uptime_clone/shared/component/loading_box.dart';
import 'package:uptime_clone/shared/component/search_box_with_icon.dart';
import 'package:uptime_clone/shared/navigation/provider.dart';
import 'package:uptime_clone/shared/theme/model.dart';
import 'package:uptime_clone/shared/theme/provider.dart';
import 'package:uptime_clone/test.dart';

final textColorProvider = StateProvider(
  (ref) => ref.watch(themeManagerProvider).themeData.colorScheme.onBackground,
);

class HomeScreen extends HookConsumerWidget {
  static const path = '${DashboardScreen.path}/home';
  static const name = 'HomeScreen';
  static final provider = homePageDataProvider;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homePageData = ref.watch(homePageDataProvider);
    final scrollController = useScrollController(
      keepScrollOffset: true,
      initialScrollOffset: homePageData.scrollOffset,
    );
    final sensorX = useState(0.0);
    final sensorY = useState(0.0);
    void updateOffset() {
      ref
          .read(homePageDataProvider.notifier)
          .updateOffset(scrollController.offset);
    }

    useEffect(() {
      scrollController.addListener(updateOffset);
      return () => scrollController.removeListener(updateOffset);
    }, []);
    useEffect(() {
      accelerometerEvents.listen((AccelerometerEvent event) {
        sensorX.value = event.x;
        sensorY.value = -event.y * 3;
      });
      return;
    }, []);
    final data = ref.watch(HomeScreen.provider);

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            buildCustomShape(context, sensorX.value, sensorY.value),
            CustomScrollView(
              controller: scrollController,
              slivers: [
                buildHomePageHeader(context, ref),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 54),
                ),
                if (data.isLoadingFeatureItems)
                  SliverFillRemaining(child: kLoadingBox(context))
                else
                  ...data.featureItems
                      .map(
                        (e) => SliverToBoxAdapter(
                          child: HorizontalListWithHiddenViewAll(
                              parentScrollController: scrollController,
                              index: data.featureItems.indexOf(e)),
                        ),
                      )
                      .toList(),
              ],
            ),
          ],
        ));
  }

  SliverPersistentHeader buildHomePageHeader(
      BuildContext context, WidgetRef ref) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: FlexibleHeaderDelegateMR(
        expandedHeight: 220,
        collapsedHeight: 120,
        collapsedElevation: 0,
        children: [
          FlexibleHeaderItem(
            options: const [HeaderItemOptions.hide],
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 48,
              ),
              child: buildTitleAndNotification(context, ref),
            ),
          ),
          FlexibleHeaderItem(
            alignment: Alignment.centerRight,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: buildSearchCard(context, ref),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearchCard(BuildContext context, WidgetRef ref) {
    final navigator = ref.watch(dashboardNavigatorProvider.notifier);
    return Container(
      height: 64,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              navigator.navigateTo(SearchResultScreen.path);
            },
            child: const SizedBox(
              height: 48,
              child: Hero(
                tag: SearchBoxWithIcon.hero,
                child: SearchBoxWithIcon(isEnabled: false),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTitleAndNotification(BuildContext context, WidgetRef ref) {
    final data = ref.watch(homePageDataProvider);
    final navigator = ref.watch(dashboardNavigatorProvider.notifier);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.user.greating,
              style: context.theme.textTheme.labelLarge!
                  .copyWith(color: context.theme.colorScheme.onPrimary),
            ),
            if (data.isLoadingUser)
              SizedBox(
                width: 200,
                height: 40,
                child: kLoadingBar(context),
              )
            else
              Text(
                data.user.name,
                style: context.theme.textTheme.headlineLarge!
                    .copyWith(color: context.theme.colorScheme.onPrimary),
              ),
          ],
        ),
        IconButton(
          onPressed: () {
            navigator.navigateTo(NotificationScreen.path);
          },
          icon: Icon(
            FontAwesomeIcons.bell,
            color: context.theme.colorScheme.onPrimary,
          ),
        )
      ],
    );
  }

  ClipperShadowPainter buildCustomShape(
      BuildContext context, double sensorX, double sensorY) {
    return ClipperShadowPainter(
      shadow: Shadow(
        color: context.theme.shadowColor,
        offset: Offset(sensorX, sensorY),
        blurRadius: 16,
      ),
      clipper: HomepageIntroClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        color: context.theme.primaryColor,
      ),
    );
  }
}

class HorizontalListWithHiddenViewAll extends HookConsumerWidget {
  const HorizontalListWithHiddenViewAll({
    this.index = 0,
    this.parentScrollController,
    super.key,
  });
  final ScrollController? parentScrollController;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = 40 + index * 280;
    final onBackground = context.theme.colorScheme.onBackground;
    final onPrimary = context.theme.colorScheme.onPrimary;
    final navigator = ref.watch(dashboardNavigatorProvider.notifier);

    final randomDouble = useState(Random().nextDouble() * (2.0 - 1.0) + 1.0);
    final key = useState(GlobalKey());

    //#region TITLE COLOR ANIMATION
    final AnimationController animationController =
        useAnimationController(duration: const Duration(milliseconds: 300));
    final isTitleOnPrimary = useState(parentScrollController!.offset > size);
    final titleColor = useState(
      isTitleOnPrimary.value ? onPrimary : onBackground,
    );
    final animateTitleColor = useState(
      isTitleOnPrimary.value ? onBackground : onPrimary,
    );
    final isForwardAnimation = useState(true);

    final animation = ColorTween(
      begin: titleColor.value,
      end: animateTitleColor.value,
    ).animate(animationController);

    void animateColorListener() {
      if (isForwardAnimation.value) {
        animationController.forward();
        isForwardAnimation.value = false;
      } else {
        animationController.reverse();
        isForwardAnimation.value = true;
      }
    }

    void colorOptimizerFeedback() {
      if (parentScrollController!.offset > size && !isTitleOnPrimary.value) {
        isTitleOnPrimary.value = true;
      }
      if (parentScrollController!.offset < size && isTitleOnPrimary.value) {
        isTitleOnPrimary.value = false;
      }
    }

    useEffect(() {
      parentScrollController?.addListener(colorOptimizerFeedback);
      isTitleOnPrimary.addListener(animateColorListener);

      return () {
        parentScrollController?.removeListener(colorOptimizerFeedback);
        isTitleOnPrimary.removeListener(animateColorListener);
      };
    }, []);
    //#endregion TITLE COLOR ANIMATION

    //#region SCROLL TO BROWSE
    Timer? debounce;
    final scrollController = useScrollController();
    final navigated = useState(false);
    final dx = useState(0.0);
    void scrollToBrowseListener() {
      final scrollOffset = scrollController.offset;
      final scrollMaxExtent = scrollController.position.maxScrollExtent;
      final offX = scrollOffset - scrollMaxExtent;
      if (offX > 90 && dx.value < 90) {
        HapticFeedback.mediumImpact();
        debounce = Timer(const Duration(milliseconds: 600), () {
          if (dx.value > 90 && navigated.value == false) {
            HapticFeedback.lightImpact();
            navigated.value = true;
            navigator.navigateTo(BrowseScreen.path);
          }
        });
      } else if (offX < 90 && dx.value > 90) {
        if (debounce?.isActive ?? false) {
          navigated.value = false;
          debounce?.cancel();
        }
      }
      dx.value = offX;
    }

    useEffect(() {
      scrollController.addListener(scrollToBrowseListener);
      return () {
        scrollController.removeListener(scrollToBrowseListener);
        debounce?.cancel();
      };
    }, []);

    //#endregion SCROLL TO BROWSE

    return Container(
      key: key.value,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Category title",
            style: context.theme.textTheme.headlineSmall!
                .copyWith(color: animation.value),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 220,
            width: MediaQuery.of(context).size.width - 32,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Builder(builder: (context) {
                    final double data = dx.value > 90
                        ? 90
                        : dx.value < 0
                            ? 0
                            : dx.value * 1;
                    return Container(
                      width: data,
                      height: data,
                      padding: const EdgeInsets.all(8),
                      child: FittedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.next_plan),
                            Text(
                              'View all',
                              style: context.theme.textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                      // color: Colors.amber,
                    );
                  }),
                ),
                ListView.separated(
                  controller: scrollController,
                  clipBehavior: Clip.none,
                  addRepaintBoundaries: true,
                  addAutomaticKeepAlives: true,
                  cacheExtent: 4,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    final width =
                        MediaQuery.of(context).size.width / randomDouble.value;

                    return Container(
                      width: width,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: UptimeTheme.borderRadius,
                        color: context.theme.primaryColorLight,
                      ),
                      child: const VerticalCard(),
                    );
                  },
                  separatorBuilder: (context, i) {
                    return const SizedBox(width: 16);
                  },
                  itemCount: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class VerticalCard extends StatefulHookConsumerWidget {
  const VerticalCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VerticalCardState();
}

class _VerticalCardState extends ConsumerState<VerticalCard> {
  @override
  Widget build(BuildContext context) {
    final navigator = ref.watch(dashboardNavigatorProvider.notifier);
    final data = ref.watch(homePageDataProvider.notifier);
    return ClipRRect(
      borderRadius: UptimeTheme.borderRadius,
      child: Stack(
        children: [
          Container(
            color: context.theme.primaryColorDark,
          ),
          CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: fakeImages[Random().nextInt(fakeImages.length - 1)],
            imageBuilder: (context, imageProvider) {
              return Material(
                child: Ink.image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: IntrinsicHeight(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: UptimeTheme.radius,
                              bottomRight: UptimeTheme.radius,
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: [
                                    context.theme.scaffoldBackgroundColor
                                        .withOpacity(0.1),
                                    context.theme.scaffoldBackgroundColor
                                        .withOpacity(0.8),
                                  ],
                                ),
                              ),
                              child: ClipRRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10,
                                    sigmaY: 10,
                                    tileMode: TileMode.mirror,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            "Title",
                                            maxLines: 1,
                                            style: context
                                                .theme.textTheme.headlineSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: InkWell(
                          onTap: () => {},
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            placeholder: (context, url) => const Center(
              child: SizedBox(
                height: 48,
                width: 48,
                child: CircularProgressIndicator(),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
