import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../domain/merchandise.dart';

class MerchandiseItem extends ConsumerWidget {
  const MerchandiseItem({super.key, required this.merchandise});

  final ReadMerchandise merchandise;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const Gap(20),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.network(merchandise.image),
              ),
            ),
            Text(merchandise.name),
            Text('¥${merchandise.price}円'),
          ],
        ),
      ),
    );
  }
}
