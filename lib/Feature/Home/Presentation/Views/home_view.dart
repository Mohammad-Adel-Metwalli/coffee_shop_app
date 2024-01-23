import 'package:coffee_shop_app/Core/Utils/constant_colors.dart';
import 'package:coffee_shop_app/Feature/Home/Presentation/Views/Widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: babyBlue,
        body: HomeViewBody(),
      ),
    );
  }
}