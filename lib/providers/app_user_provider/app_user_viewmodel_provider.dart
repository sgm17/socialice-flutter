import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/app_user_viewmodel.dart';

final appUserViewModelProvider =
    Provider<AppUserViewmodel>((ref) => AppUserViewmodel());
