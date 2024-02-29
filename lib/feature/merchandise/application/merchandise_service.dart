
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/merchandise.dart';

part 'merchandise_service.g.dart';

@riverpod
Stream<List<ReadMerchandise>> streamFetchMerchandise(
  StreamFetchMerchandiseRef ref,
) async* {
  final query = MerchandiseQuery();
  yield await query.fetchDocuments(
    queryBuilder: (query) => query.orderBy(
      'createdAt',
      descending: true,
    ),
  );
}
