import 'package:daemon_website/models/polaroid_text.dart';
import 'package:flutter/material.dart';

class PolaroidWidget extends StatelessWidget {
  final String image;
  final PolaroidText? polaroidText;
  const PolaroidWidget({
    Key? key,
    this.image = 'https://i.imgur.com/IYFh9ge.png',
    this.polaroidText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            width: 336,
            height: 403.2,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 19.2,
              left: 19.2,
              right: 19.2,
            ),
            child: SizedBox.square(
                dimension: 297.6,
                child: FadeInImage.assetNetwork(
                  image: image,
                  fit: BoxFit.cover,
                  placeholder: 'assets/blank.jpg',
                )),
          ),
          polaroidText == null
              ? const SizedBox.shrink()
              : Positioned(
                  bottom: 30,
                  child: Container(
                    alignment: Alignment.center,
                    width: 336,
                    child: Text(
                      polaroidText!.text,
                      style: TextStyle(
                        fontFamily: polaroidText!.fontFamily,
                        fontSize: polaroidText!.fontSize,
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
  const PolaroidBackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        width: 336,
        height: 403.2,
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topLeft,
        child: const Text("Helllooooo"),
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
