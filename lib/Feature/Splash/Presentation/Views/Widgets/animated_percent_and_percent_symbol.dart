import 'package:coffee_shop_app/Feature/Splash/Presentation/Views/Widgets/percent_symbol.dart';
import 'package:flutter/material.dart';
import 'animated_percent.dart';

class AnimatedPercentAndPercentSymbol extends StatelessWidget
{
  const AnimatedPercentAndPercentSymbol({
    super.key,
    required this.percentText,
  });

  final double percentText;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedPercent(percentText: percentText),

        const PercentSymbol(),
      ],
    );
  }
}