import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_shop_app/Core/Utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_view_app_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomScrollView(
      slivers: [
        const HomeViewAppBar(),

        SliverToBoxAdapter(
          child: SvgPicture.asset('Assets/Images/Cold brew.svg'),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 600.h,
            child: CarouselSlider.builder(
              itemCount: AssetsData.imagesList.length,
              itemBuilder: (context, int index, int realIndex)
              {
                return const Image(image: svg.Svg('Assets/Images/Cold brew.svg'));
              },
              options: CarouselOptions(
                height: 500.h,
                scrollPhysics: const BouncingScrollPhysics(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}