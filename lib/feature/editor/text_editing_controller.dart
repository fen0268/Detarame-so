import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final nameTextEditingController = Provider.autoDispose(
  (ref) {
    final controller = TextEditingController();
    ref.onDispose(controller.dispose);
    return controller;
  },
);

final descriptionTextEditingController = Provider.autoDispose(
  (ref) {
    final controller = TextEditingController();
    ref.onDispose(controller.dispose);
    return controller;
  },
);

final nameEnTextEditingController = Provider.autoDispose(
  (ref) {
    final controller = TextEditingController();
    ref.onDispose(controller.dispose);
    return controller;
  },
);

final priceTextEditingController = Provider.autoDispose(
  (ref) {
    final controller = TextEditingController();
    ref.onDispose(controller.dispose);
    return controller;
  },
);

final stockTextEditingController = Provider.autoDispose(
  (ref) {
    final controller = TextEditingController();
    ref.onDispose(controller.dispose);
    return controller;
  },
);
