import 'package:socialice/domains/conversation_repository/src/models/conversation_model.dart';

abstract class ConversationRepository {
  Future<List<ConversationModel>> getConversations();
}
