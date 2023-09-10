import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../appState.dart';

class SearchView extends ConsumerWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();

    return Container(
      child: SizedBox(
          // width: 500,
          child: TextField(
              autofocus: true,
              controller: controller,
              onChanged: (text) => ref.read(AppState.searchText.notifier).update((state) => text),
              decoration: InputDecoration(
                  hintText: "Search",
                  icon: const Icon(Icons.search),
                  suffix: InkWell(
                      onTap: () {
                        controller.clear();
                        ref.read(AppState.searchText.notifier).update((state) => null);
                      },
                      child: const SizedBox(
                          height: 16,
                          child: Icon(
                            Icons.clear,
                            size: 16.0,
                          ))),
                  isDense: true))),
    );
  }
}
