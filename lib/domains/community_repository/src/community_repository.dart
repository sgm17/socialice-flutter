import 'package:socialice/domains/community_repository/src/models/community_model.dart';

abstract class CommunityRepository {
  Future<List<CommunityModel>> getCommunities();
}
