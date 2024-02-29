import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/merchandise.dart';
import 'merchandise_item.dart';

class SoldOutWidget extends ConsumerWidget {
  const SoldOutWidget({super.key, required this.merchandise});

  final ReadMerchandise merchandise;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Positioned.fill(
          child: MerchandiseItem(merchandise: merchandise),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  '売り切れ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
