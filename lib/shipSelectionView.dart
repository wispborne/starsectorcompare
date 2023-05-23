import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShipSelectionView extends ConsumerWidget {
  const ShipSelectionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ShipHullTypeFilters(),
      ],
    );
  }
}

class ShipHullTypeFilters extends ConsumerStatefulWidget {
  const ShipHullTypeFilters({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ShipHullTypeFiltersState();
}

class _ShipHullTypeFiltersState extends ConsumerState<ShipHullTypeFilters> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
