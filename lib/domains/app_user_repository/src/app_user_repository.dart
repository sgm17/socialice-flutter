import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';

abstract class AppUserRepository {
  Future<AppUserModel> getUser();
  Future<AppUserModel> getUserById({required String id});
  Future<AppUserModel> updateUser({
    required String name,
    required String surname,
    required String username,
    required String description,
    required String? profileImage,
    required String location,
    required double latitude,
    required double longitude,
  });
}
