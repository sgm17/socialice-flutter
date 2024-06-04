import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/conversation_repository/src/conversation_repository.dart';
import 'package:socialice/domains/conversation_repository/src/models/conversation_model.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

class ConversationViewmodel implements ConversationRepository {
  final Ref ref;

  ConversationViewmodel({required this.ref});

  @override
  Future<List<ConversationModel>> getConversations() {
    return ref.read(httpViewmodelProvider).requestConversations();
  }
}
