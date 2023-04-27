import 'dart:convert';
import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/extensions.dart';
import 'package:starsectorcompare/homeView.dart';
import 'package:starsectorcompare/mainMenu.dart';
import 'package:starsectorcompare/models/settings.dart';
import 'package:starsectorcompare/shortcuts.dart';
import 'package:starsectorcompare/utils.dart';

configureLogging() {
  const logLevels = ["I", "W", "E"];
  Fimber.plantTree(
      DebugTree.elapsed(logLevels:logLevels, useColors: true));
}

void main() {
  configureLogging();
  Fimber.i("Logging started.");
  Fimber.i(
      "Platform: ${Platform.operatingSystem} ${Platform.operatingSystemVersion}.");
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

    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: useCustomDarkTheme
          ? ThemeData.from(
              colorScheme: ColorScheme.dark(
                  primary: pink,
                  background: Colors.grey[900]!,
                  surface: Colors.grey[850]!),
              useMaterial3: true)
          : ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: orange,
      ),
      home: CallbackShortcuts(
          bindings: ShortcutBindings.getShortcuts(ref),
          child: const Focus(
              autofocus: true, child: MyHomePage(title: 'Starsector Compare'))),
    );
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
    Future.delayed(Duration(seconds: 1), () => loadAppData(ref));
    return Scaffold(
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
  void initState() {
  }

  loadAppData(WidgetRef ref) {
    if (settingsFile.existsSync()) {
      Fimber.i("Loading settings from ${settingsFile.path}.");
      try {
        var settings = Settings.fromJson(
            jsonDecode(settingsFile.readAsStringSync().ifEmptyOrNull("{}")));

        ref.read(appSettings.notifier).update((state) => settings);
      } catch (e) {
        Fimber.e("Error loading settings from ${settingsFile.path}.", ex: e);
      }
    } else {
      Fimber.i("Settings file ${settingsFile.path} does not exist.");
    }
  }

}
