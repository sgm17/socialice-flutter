import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/community_repository/src/community_repository.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

class CommunityViewmodel extends CommunityRepository {
  final Ref ref;

  CommunityViewmodel({required this.ref});

  @override
  Future<List<CommunityModel>> getCommunities() {
    return ref.read(httpViewmodelProvider).requestCommunitiesModel();
  }
}
