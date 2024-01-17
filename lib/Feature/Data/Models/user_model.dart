import 'package:hive/hive.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject
{
  @HiveField(0)
  String username;
  @HiveField(1)
  String email;
  @HiveField(2)
  String password;
  @HiveField(3)
  String arabicUsername;

  UserModel(this.username, this.password, this.email, this.arabicUsername);
}