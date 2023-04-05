import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starsectorcompare/fileChooser.dart';
import 'package:starsectorcompare/utils.dart';

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
              var folder = await chooseModFolder(ref);
              if (folder != null && Directory(folder).existsSync()) {
                ref
                    .read(appSettings.notifier)
                    .update((state) => state.copyWith(gameDir: folder));
              }
            },
            child: Text("Choose Starsector folder..."),
          ),
          // MenuItemButton(
          //   onPressed: () => Opening().openChooseDataDialog(ref),
          //   shortcut: WaseShortcutBindings.openDataShortcut(ref).key,
          //   child: Text("Open data"),
          // ),
        ],
        child: MenuItemButton(child: Text("File")),
      )
    ]);
  }
}

Future<String?> chooseModFolder(WidgetRef ref) async {
  return await FileChooser().openChooseDataDialog(ref);
}
