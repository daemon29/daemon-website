import 'package:daemon_website/models/polaroid_model.dart';
import 'package:daemon_website/models/polaroid_text.dart';
import 'package:daemon_website/widgets/flip_card.dart';
import 'package:daemon_website/widgets/image_hero_dialog.dart';
import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

class PolaroidWidget extends StatelessWidget {
  final double height;
  final String image;
  final PolaroidText? polaroidText;
  const PolaroidWidget({
    Key? key,
    required this.image,
    this.polaroidText,
    this.height = 403.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _scalling = height / 403.2;
    return Material(
      elevation: 5,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            width: 336 * _scalling,
            height: 403.2 * _scalling,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 19.2 * _scalling,
              left: 19.2 * _scalling,
              right: 19.2 * _scalling,
            ),
            child: SizedBox.square(
                dimension: 297.6 * _scalling,
                child: FadeInImage.assetNetwork(
                  image: image,
                  fit: BoxFit.cover,
                  placeholder: 'assets/blank.jpg',
                )),
          ),
          polaroidText == null
              ? const SizedBox.shrink()
              : Positioned(
                  bottom: 30 * _scalling,
                  child: Container(
                    alignment: Alignment.center,
                    width: 336 * _scalling,
                    child: Text(
                      polaroidText!.text,
                      style: TextStyle(
                          fontFamily: polaroidText!.fontFamily,
                          fontSize: polaroidText!.fontSize * _scalling,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}

class PolaroidBackWidget extends StatelessWidget {
  final PolaroidText? text;
  final Alignment alignment;
  final double height;
  const PolaroidBackWidget({
    Key? key,
    this.text,
    this.alignment = Alignment.center,
    this.height = 403.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _scalling = height / 403.2;

    return Material(
      elevation: 5,
      child: Container(
        width: 336 * _scalling,
        height: 403.2 * _scalling,
        color: Colors.white,
        padding: EdgeInsets.all(10 * _scalling),
        alignment: alignment,
        child: text != null
            ? Text(
                text!.text,
                style: TextStyle(
                    fontFamily: text!.fontFamily,
                    fontSize: text!.fontSize * _scalling,
                    color: Colors.black),
              )
            : nil,
      ),
    );
  }
}

class PolaroidStack extends StatelessWidget {
  final List<Widget> list;
  const PolaroidStack({Key? key, this.list = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PolaroidCard extends StatelessWidget {
  final PolaroidModel polaroidModel;
  const PolaroidCard({Key? key, required this.polaroidModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Hero(
          tag: polaroidModel.imageUrl,
          child: PolaroidWidget(
            image: polaroidModel.imageUrl,
            polaroidText: polaroidModel.frontText,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          HeroDialogRoute(
            builder: (BuildContext context) {
              final height = MediaQuery.of(context).size.height;
              return FlipCard(
                front: Hero(
                  tag: polaroidModel.imageUrl,
                  child: PolaroidWidget(
                    image: polaroidModel.imageUrl,
                    polaroidText: polaroidModel.frontText,
                    height: height * 0.8,
                  ),
                ),
                rear: PolaroidBackWidget(
                  text: polaroidModel.backText,
                  height: height * 0.8,
                  alignment: polaroidModel.backTextAlignment,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
