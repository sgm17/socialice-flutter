import 'package:socialice/domains/app_user_repository/src/app_user_repository.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/models.dart';

class AppUserViewmodel extends AppUserRepository {
  @override
  Future<AppUserModel> getUser() {
    return Future.delayed(Duration(seconds: 3), () => sergiAppUserModel);
  }

  @override
  Future<AppUserModel> getUserById({required int id}) {
    return Future.delayed(Duration(seconds: 3), () => sergiAppUserModel);
  }
}
