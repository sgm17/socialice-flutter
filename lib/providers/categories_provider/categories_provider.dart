import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

final categoriesFutureProvider =
    FutureProvider<List<CategoryModel>>((ref) async {
  return Future.delayed(Duration(seconds: 3),
      () async => await ref.read(httpViewmodelProvider).requestCategories());
});
