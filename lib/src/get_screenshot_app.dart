import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:golden_screenshot/golden_screenshot.dart';
import 'package:get/get.dart';

/// A [GetMaterialApp] that produces golden images
/// with [device]'s resolution, pixel ratio, and frame.
class GetScreenshotApp extends GetMaterialApp {
  const GetScreenshotApp({
    super.key,
    required this.device,
    this.frameColors,
    @Deprecated('Use home instead') Widget? child,
    required super.home,
    super.actions,
    super.builder,
    super.checkerboardOffscreenLayers,
    super.checkerboardRasterCacheImages,
    super.color,
    super.customTransition,
    super.darkTheme,
    super.debugShowCheckedModeBanner = false,
    super.debugShowMaterialGrid,
    super.defaultGlobalState,
    super.defaultTransition,
    super.enableLog = kDebugMode,
    super.fallbackLocale,
    super.getPages,
    super.highContrastDarkTheme,
    super.highContrastTheme,
    super.initialBinding,
    super.initialRoute,
    super.locale,
    super.localeListResolutionCallback,
    super.localeResolutionCallback,
    super.localizationsDelegates,
    super.logWriterCallback,
    super.navigatorKey,
    super.navigatorObservers,
    super.onDispose,
    super.onGenerateInitialRoutes,
    super.onGenerateRoute,
    super.onGenerateTitle,
    super.onInit,
    super.onReady,
    super.onUnknownRoute,
    super.opaqueRoute,
    super.popGesture,
    super.routes,
    super.routingCallback,
    super.scaffoldMessengerKey,
    super.scrollBehavior,
    super.shortcuts,
    super.showPerformanceOverlay,
    super.showSemanticsDebugger,
    super.smartManagement = SmartManagement.full,
    super.supportedLocales,
    super.textDirection,
    super.theme,
    super.themeMode,
    super.title,
    super.transitionDuration,
    super.translations,
    super.translationsKeys,
    super.unknownRoute,
    super.useInheritedMediaQuery = false,
    this.themeAnimationStyle = AnimationStyle.noAnimation,
  });

  GetScreenshotApp.clone({
    required this.device,
    this.frameColors,
    @Deprecated('Use home instead') Widget? child,
    this.themeAnimationStyle = AnimationStyle.noAnimation,
    required GetMaterialApp original,
  }) : super(
         home: original.home,
         actions: original.actions,
         builder: original.builder,
         checkerboardOffscreenLayers: original.checkerboardOffscreenLayers,
         checkerboardRasterCacheImages: original.checkerboardRasterCacheImages,
         color: original.color,
         customTransition: original.customTransition,
         darkTheme: original.darkTheme,
         debugShowCheckedModeBanner: original.debugShowCheckedModeBanner,
         debugShowMaterialGrid: original.debugShowMaterialGrid,
         defaultGlobalState: original.defaultGlobalState,
         defaultTransition: original.defaultTransition,
         enableLog: original.enableLog,
         fallbackLocale: original.fallbackLocale,
         getPages: original.getPages,
         highContrastDarkTheme: original.highContrastDarkTheme,
         highContrastTheme: original.highContrastTheme,
         initialBinding: original.initialBinding,
         initialRoute: original.initialRoute,
         locale: original.locale,
         localeListResolutionCallback: original.localeListResolutionCallback,
         localeResolutionCallback: original.localeResolutionCallback,
         localizationsDelegates: original.localizationsDelegates,
         logWriterCallback: original.logWriterCallback,
         navigatorKey: original.navigatorKey,
         navigatorObservers:
             original.navigatorObservers ?? const <NavigatorObserver>[],
         onDispose: original.onDispose,
         onGenerateInitialRoutes: original.onGenerateInitialRoutes,
         onGenerateRoute: original.onGenerateRoute,
         onGenerateTitle: original.onGenerateTitle,
         onInit: original.onInit,
         onReady: original.onReady,
         onUnknownRoute: original.onUnknownRoute,
         opaqueRoute: original.opaqueRoute,
         popGesture: original.popGesture,
         routes: original.routes ?? const <String, WidgetBuilder>{},
         routingCallback: original.routingCallback,
         scaffoldMessengerKey: original.scaffoldMessengerKey,
         scrollBehavior: original.scrollBehavior,
         shortcuts: original.shortcuts,
         showPerformanceOverlay: original.showPerformanceOverlay,
         showSemanticsDebugger: original.showSemanticsDebugger,
         smartManagement: original.smartManagement,
         supportedLocales: original.supportedLocales,
         textDirection: original.textDirection,
         theme: original.theme,
         themeMode: original.themeMode,
         title: original.title,
         transitionDuration: original.transitionDuration,
         translations: original.translations,
         translationsKeys: original.translationsKeys,
         unknownRoute: original.unknownRoute,
         useInheritedMediaQuery: original.useInheritedMediaQuery,
       );

  /// A [GetScreenshotApp] that includes a title bar if the device is running
  /// Linux or Windows.
  /// For other platforms, it behaves the same as [GetScreenshotApp].
  GetScreenshotApp.withConditionalTitlebar({
    super.key,
    required this.device,
    this.frameColors,
    @Deprecated('Use home instead') Widget? child,
    super.actions,
    TransitionBuilder? builder,
    super.checkerboardOffscreenLayers,
    super.checkerboardRasterCacheImages,
    super.color,
    super.customTransition,
    super.darkTheme,
    super.debugShowCheckedModeBanner = false,
    super.debugShowMaterialGrid,
    super.defaultGlobalState,
    super.defaultTransition,
    super.enableLog = kDebugMode,
    super.fallbackLocale,
    super.getPages,
    super.highContrastDarkTheme,
    super.highContrastTheme,
    super.initialBinding,
    super.initialRoute,
    super.locale,
    super.localeListResolutionCallback,
    super.localeResolutionCallback,
    super.localizationsDelegates,
    super.logWriterCallback,
    super.navigatorKey,
    super.navigatorObservers,
    super.onDispose,
    super.onGenerateInitialRoutes,
    super.onGenerateRoute,
    super.onGenerateTitle,
    super.onInit,
    super.onReady,
    super.onUnknownRoute,
    super.opaqueRoute,
    super.popGesture,
    super.routes,
    super.routingCallback,
    super.scaffoldMessengerKey,
    super.scrollBehavior,
    super.shortcuts,
    super.showPerformanceOverlay,
    super.showSemanticsDebugger,
    super.smartManagement = SmartManagement.full,
    super.supportedLocales,
    super.textDirection,
    super.theme,
    super.themeMode,
    super.title,
    super.transitionDuration,
    super.translations,
    super.translationsKeys,
    super.unknownRoute,
    super.useInheritedMediaQuery = false,
    bool? isClosable,
    bool? isMaximizable,
    bool? isMinimizable,
    this.themeAnimationStyle = AnimationStyle.noAnimation,
  }) : super(
         builder: (context, child) {
           return ScreenshotConditionalTitlebar(
             title: Text(title),
             device: device,
             isClosable: isClosable,
             isMaximizable: isMaximizable,
             isMinimizable: isMinimizable,
             child:
                 builder?.call(context, child) ??
                 child ??
                 const SizedBox.expand(),
           );
         },
       ) {
    debugDefaultTargetPlatformOverride = device.platform;
  }

  /// The device whose resolution and pixel ratio will be simulated,
  /// and whose frame will be drawn around the [home] widget.
  final ScreenshotDevice device;

  /// The colors of the device frame.
  final ScreenshotFrameColors? frameColors;

  final AnimationStyle? themeAnimationStyle;

  /// This property has been replaced with [home].
  @Deprecated('Use home instead.')
  Widget? get child => home;

  @override
  Widget build(BuildContext context) {
    return DeviceBox.fromDevice(
      device: device,
      mediaQueryData: MediaQueryData(
        disableAnimations: themeAnimationStyle == AnimationStyle.noAnimation,
      ),
      child: GetMaterialApp(
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: scaffoldMessengerKey,
        routes: routes ?? const <String, WidgetBuilder>{},
        initialRoute: initialRoute,
        onGenerateRoute: onGenerateRoute,
        onGenerateInitialRoutes: onGenerateInitialRoutes,
        onUnknownRoute: onUnknownRoute,
        navigatorObservers: navigatorObservers ?? const <NavigatorObserver>[],
        title: title,
        onGenerateTitle: onGenerateTitle,
        color: color,
        theme:
            theme?.copyWith(platform: device.platform) ??
            // Fallback so the platform is always set.
            ThemeData(platform: device.platform),
        darkTheme: darkTheme?.copyWith(platform: device.platform),
        highContrastTheme: highContrastTheme?.copyWith(
          platform: device.platform,
        ),
        highContrastDarkTheme: highContrastDarkTheme?.copyWith(
          platform: device.platform,
        ),
        themeMode: themeMode,
        locale: locale,
        localizationsDelegates: localizationsDelegates,
        localeListResolutionCallback: localeListResolutionCallback,
        localeResolutionCallback: localeResolutionCallback,
        supportedLocales: supportedLocales,
        debugShowMaterialGrid: debugShowMaterialGrid,
        showPerformanceOverlay: showPerformanceOverlay,
        checkerboardRasterCacheImages: checkerboardRasterCacheImages,
        checkerboardOffscreenLayers: checkerboardOffscreenLayers,
        showSemanticsDebugger: showSemanticsDebugger,
        debugShowCheckedModeBanner: debugShowCheckedModeBanner,
        shortcuts: shortcuts,
        actions: actions,
        scrollBehavior: scrollBehavior,
        builder: (context, child) {
          return device.frameBuilder(
            device: device,
            frameColors: frameColors,
            child:
                builder?.call(context, child) ??
                child ??
                const SizedBox.expand(),
          );
        },
        home: home,
      ),
    );
  }
}
