import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoadingView extends ConsumerStatefulWidget {
  const LoadingView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _LoadingViewState();
}

class _LoadingViewState extends ConsumerState<LoadingView> {
  @override
  Widget build(BuildContext context) {
    // loadData(ref);
    return Container();
  }
}
