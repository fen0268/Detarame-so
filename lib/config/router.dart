import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../feature/editor/editor_page.dart';
import '../feature/merchandise/presentation/merchandise_page.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: MerchandisePage.path,
    routes: [
      GoRoute(
        path: MerchandisePage.path,
        builder: (_, __) {
          return const MerchandisePage();
        },
      ),
      GoRoute(
        path: EditorPage.path,
        builder: (_, __) {
          return const EditorPage();
        },
      ),
    ],
  ),
);
