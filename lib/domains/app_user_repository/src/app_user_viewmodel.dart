import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/app_user_repository.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

class AppUserViewmodel extends AppUserRepository {
  final Ref ref;

  AppUserViewmodel({required this.ref});

  @override
  Future<AppUserModel> getUser() {
    return ref.read(httpViewmodelProvider).requestAppUserModel();
  }

  @override
  Future<AppUserModel> getUserById({required String id}) {
    return ref.read(httpViewmodelProvider).requestAppUserModelById(id: id);
  }

  @override
  Future<AppUserModel> updateUser(
      {required String name,
      required String surname,
      required String username,
      required String description,
      required String? profileImage,
      required String location,
      required double latitude,
      required double longitude}) {
    return ref.read(httpViewmodelProvider).updateAppUserModel(
        name: name,
        surname: surname,
        username: username,
        description: description,
        profileImage: profileImage,
        location: location,
        latitude: latitude,
        longitude: longitude);
  }
}
