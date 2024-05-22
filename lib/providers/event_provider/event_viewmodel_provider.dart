import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/event_viewmodel.dart';

final eventViewmodelProvider =
    Provider<EventViewmodel>((ref) => EventViewmodel());
