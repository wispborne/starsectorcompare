import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../fileChooser.dart';
import 'models/settings.dart';

class MainMenu extends ConsumerStatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  ConsumerState<MainMenu> createState() => _MenuState();
}

class _MenuState extends ConsumerState<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return MenuBar(children: [
      SubmenuButton(
        menuChildren: [
          MenuItemButton(
            onPressed: () async {
              var folder = await chooseGameFolder(ref);
              if (folder != null && Directory(folder).existsSync()) {
                ref.read(appSettings.notifier).update((state) => state.copyWith(gameDir: folder));

                Fimber.d(listModsInGameFolder(Directory(folder)).toString());
              }
            },
            child: const Text("Choose Starsector folder..."),
          ),
          // MenuItemButton(
          //   onPressed: () => Opening().openChooseDataDialog(ref),
          //   shortcut: WaseShortcutBindings.openDataShortcut(ref).key,
          //   child: Text("Open data"),
          // ),
        ],
        child: const MenuItemButton(child: Text("File")),
      )
    ]);
  }
}

Future<String?> chooseGameFolder(WidgetRef ref) async {
  return await FileChooser().openChooseDataDialog(ref);
}
