import 'package:daemon_website/widgets/image_hero_dialog.dart';
import 'package:flutter/material.dart';

class ImageHero extends StatelessWidget {
  final String image;
  final BoxFit? fit;
  const ImageHero(this.image, {Key? key, this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Hero(
          tag: image,
          child: Image.network(
            image,
            fit: BoxFit.fitWidth,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          HeroDialogRoute(
            builder: (BuildContext context) => Hero(
              tag: image,
              child: Image.network(image),
            ),
          ),
        ),
      ),
    );
  }
}
