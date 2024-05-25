import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/http_repository/widgets/http_viewmodel.dart';
import 'package:socialice/providers/http_provider/http_client_provider.dart';

final httpViewmodelProvider = Provider<HttpViewmodel>((ref) {
  // final tokenId = ref.watch(tokenIdProvider);
  final httpClient = ref.watch(httpClientProvider);
  return HttpViewmodel(httpClient: httpClient);
});
