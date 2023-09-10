import 'dart:convert';
import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';

import '../extensions.dart';
import '../mainMenu.dart';
import '../settingsSaver.dart';
import '../shortcuts.dart';
import '../themes.dart';
import '../utils.dart';
import '../views/homeView.dart';
import 'models/settings.dart';

configureLogging() {
  const logLevels = kDebugMode ? ["V", "D", "I", "W", "E"] : ["I", "W", "E"];
  Fimber.plantTree(DebugTree.elapsed(logLevels: logLevels, useColors: true));
}

const appTitle = "StarCompare";
const appVersion = "0.1";
const appTitleWithVersion = "$appTitle v$appVersion";

void main() async {
  configureLogging();
  Fimber.i("Logging started.");
  Fimber.i("Platform: ${Platform.operatingSystem} ${Platform.operatingSystemVersion}.");
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  WindowManager.instance.setTitle(appTitleWithVersion);
  runApp(ProviderScope(observers: [SettingSaver()], child: const MyApp()));
}

// Only for use in this class. Danger danger.
WidgetRef? _ref;

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orange = createMaterialColor(const Color.fromARGB(255, 255, 186, 8));
    final pink = createMaterialColor(const Color.fromARGB(255, 222, 13, 146));
    const useCustomDarkTheme = true;
    _ref = ref;

    return AdaptiveTheme(
        light: ThemeData(brightness: Brightness.light, primarySwatch: Colors.cyan, hintColor: Colors.cyanAccent),
        dark: Themes.starsectorLauncher,
        initial: AdaptiveThemeMode.dark,
        builder: (theme, darkTheme) => MaterialApp.router(
              title: appTitle,
              theme: theme,
              debugShowCheckedModeBanner: false,
              darkTheme: darkTheme,
              routerConfig: GoRouter(
                routes: <GoRoute>[
                  GoRoute(
                    path: '/',
                    builder: (BuildContext context, GoRouterState state) {
                      return CallbackShortcuts(
                          bindings: ShortcutBindings.getShortcuts(ref),
                          child: const Focus(autofocus: true, child: MyHomePage(title: appTitle)));
                    },
                  )
                ],
              ),
            ));
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () => loadAppData(ref));
    return const Scaffold(
      body: Column(
        children: [
          Row(children: [Expanded(child: MainMenu())]),
          Expanded(child: HomeView())
          // Text(ref.watch(AppState.ship)?.toString() ?? "")
        ],
      ),
    );
  }

  @override
  void initState() {}

  loadAppData(WidgetRef ref) {
    if (settingsFile.existsSync()) {
      Fimber.i("Loading settings from ${settingsFile.path}.");
      try {
        var settings = Settings.fromJson(jsonDecode(settingsFile.readAsStringSync().ifEmptyOrNull("{}")));

        ref.read(appSettings.notifier).update((state) => settings);
      } catch (e) {
        Fimber.e("Error loading settings from ${settingsFile.path}.", ex: e);
      }
    } else {
      Fimber.i("Settings file ${settingsFile.path} does not exist.");
    }
  }
}
