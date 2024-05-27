import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

final interestsFutureProvider =
    FutureProvider<List<InterestModel>>((ref) async {
  final interests = await ref.read(httpViewmodelProvider).requestInterests();
  return interests;
});
