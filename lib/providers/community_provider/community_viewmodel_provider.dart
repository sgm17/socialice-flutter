import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/community_repository/src/community_viewmodel.dart';

final communityViewmodelProvider =
    Provider<CommunityViewmodel>((ref) => CommunityViewmodel(ref: ref));
