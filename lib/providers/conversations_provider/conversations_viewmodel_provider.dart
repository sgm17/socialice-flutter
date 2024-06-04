import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/conversation_repository/src/conversation_viewmodel.dart';

final conversationsViewmodelProvider =
    Provider<ConversationViewmodel>((ref) => ConversationViewmodel(ref: ref));
