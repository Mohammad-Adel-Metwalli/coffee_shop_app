import 'package:coffee_shop_app/Feature/Home/Presentation/Views/Widgets/home_app_bar_title.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class HomeAppBarBody extends StatelessWidget
{
  const HomeAppBarBody({
    super.key,
  });


  @override
  Widget build(BuildContext context)
  {
    return FlexibleSpaceBar(
      title: const HomeAppBarTitle(),
      background: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              brown,
              bronze,
              lightBrown,
            ], // Set your gradient colors
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}