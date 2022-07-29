import 'package:carousel_slider/carousel_slider.dart';
import 'package:daemon_website/constants.dart';
import 'package:daemon_website/widgets/polaroid_widget.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  const ImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: polaroidImages.length,
      options: CarouselOptions(
        // view
        aspectRatio: 1,
        viewportFraction: 0.6,
        height: MediaQuery.of(context).size.height,
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        autoPlay: true,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageIndex) {
        // return Container(
        //   clipBehavior: Clip.hardEdge,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15),
        //   ),
        //   child: ImageHero(images[itemIndex]),
        // );
        return PolaroidCard(polaroidModel: polaroidImages[itemIndex]);
      },
    );
  }
}
