import 'package:carousel_slider/carousel_slider.dart';
import 'package:daemon_website/constants.dart';
import 'package:daemon_website/widgets/image_hero.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  const ImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        aspectRatio: 3,
        viewportFraction: 0.4,
        height: MediaQuery.of(context).size.height,
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        autoPlay: true,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageIndex) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ImageHero(images[itemIndex]),
        );
      },
    );
  }
}
