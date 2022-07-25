import 'package:daemon_website/models/polaroid_text.dart';
import 'package:flutter/material.dart';

class PolaroidWidget extends StatelessWidget {
  final double height;
  final String image;
  final PolaroidText? polaroidText;
  const PolaroidWidget(
      {Key? key,
      this.image = 'https://i.imgur.com/IYFh9ge.png',
      this.polaroidText,
      this.height = 403.2})
      : super(key: key);

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
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}

class PolaroidBackWidget extends StatelessWidget {
  final String text;
  final Alignment alignment;
  final double height;
  final double fontSize;
  const PolaroidBackWidget(
      {Key? key,
      this.text = "",
      this.alignment = Alignment.topLeft,
      this.height = 403.2,
      this.fontSize = 26})
      : super(key: key);

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
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Lovely',
            fontSize: fontSize * _scalling,
          ),
        ),
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
