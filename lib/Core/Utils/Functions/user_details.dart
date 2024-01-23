import 'package:coffee_shop_app/Core/Utils/constants.dart';
import 'package:coffee_shop_app/Feature/Data/Models/user_model.dart';
import 'package:hive/hive.dart';

UserModel? getUser()
{
  var user = Hive.box<UserModel>(kUserBox);
  var userBox = user.getAt(0);

  return userBox;
}