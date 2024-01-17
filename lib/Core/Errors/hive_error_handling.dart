import 'package:coffee_shop_app/Core/Utils/constants.dart';
import 'package:hive/hive.dart';

class HiveErrorHandling
{
  static bool invalidIndexHandling()
  {
    var visitBox = Hive.box(kVisitBox);
    final visit = visitBox.values.toList();

    return visit.isEmpty;
  }
}