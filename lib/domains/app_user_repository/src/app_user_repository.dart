import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';

abstract class AppUserRepository {
  Future<AppUserModel> getUser();
  Future<AppUserModel> getUserById({required int id});
}
