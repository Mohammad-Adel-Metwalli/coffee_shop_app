import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CoffeeAnimation extends StatelessWidget
{
  const CoffeeAnimation({super.key, required this.height, required this.width});
  final double height, width;

  @override
  Widget build(BuildContext context)
  {
    return Lottie.asset(
      'Assets/Animations/Animation - 1703795347645.json',
      height: height,
      width: width,
    );
  }
}