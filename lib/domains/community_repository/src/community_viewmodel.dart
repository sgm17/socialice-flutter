import 'package:socialice/domains/community_repository/src/community_repository.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/models.dart';

class CommunityViewmodel extends CommunityRepository {
  @override
  Future<List<CommunityModel>> getCommunities() {
    return Future.delayed(Duration(seconds: 3), () => [socialSevenClub]);
  }
}
