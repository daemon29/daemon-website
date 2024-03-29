import 'package:daemon_website/models/polaroid_model.dart';
import 'package:daemon_website/models/polaroid_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleText_1 =
    GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w500);
TextStyle bodyText_1 =
    GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.w600);

EdgeInsets padding_1 = const EdgeInsets.all(10);

BorderRadiusGeometry borderRound_1 =
    const BorderRadius.all(Radius.circular(15));
TextStyle title =
    GoogleFonts.openSans(fontSize: 48, fontWeight: FontWeight.bold);
TextStyle subtitle = GoogleFonts.openSans(
    fontStyle: FontStyle.italic,
    fontSize: 21,
    color: Colors.grey,
    fontWeight: FontWeight.w600);
TextStyle header_1 =
    GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.bold);
TextStyle header_2 =
    GoogleFonts.openSans(fontSize: 22, fontWeight: FontWeight.bold);
TextStyle body_1 =
    GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w600);
TextStyle bodyBold_1 =
    GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.bold);
TextStyle hyperLink = GoogleFonts.openSans(
    fontSize: 16, color: Colors.blueAccent, fontWeight: FontWeight.w500);

EdgeInsets titlePadding = const EdgeInsets.only(top: 20, bottom: 5);
EdgeInsets subtitlePadding = const EdgeInsets.only(bottom: 5);
EdgeInsets header1Padding = const EdgeInsets.only(top: 5);
EdgeInsets header2Padding = const EdgeInsets.only(top: 10);
EdgeInsets bodyTextPadding = const EdgeInsets.only(bottom: 5);

Map<int, Color> redColorCode = {
  50: const Color.fromRGBO(230, 53, 82, .1),
  100: const Color.fromRGBO(230, 53, 82, .2),
  200: const Color.fromRGBO(230, 53, 82, .3),
  300: const Color.fromRGBO(230, 53, 82, .4),
  400: const Color.fromRGBO(230, 53, 82, .5),
  500: const Color.fromRGBO(230, 53, 82, .6),
  600: const Color.fromRGBO(230, 53, 82, .7),
  700: const Color.fromRGBO(230, 53, 82, .8),
  800: const Color.fromRGBO(230, 53, 82, .9),
  900: const Color.fromRGBO(230, 53, 82, 1),
};
Map<int, Color> blueColorCode = {
  50: const Color.fromRGBO(32, 96, 214, .1),
  100: const Color.fromRGBO(32, 96, 214, .2),
  200: const Color.fromRGBO(32, 96, 214, .3),
  300: const Color.fromRGBO(32, 96, 214, .4),
  400: const Color.fromRGBO(32, 96, 214, .5),
  500: const Color.fromRGBO(32, 96, 214, .6),
  600: const Color.fromRGBO(32, 96, 214, .7),
  700: const Color.fromRGBO(32, 96, 214, .8),
  800: const Color.fromRGBO(32, 96, 214, .9),
  900: const Color.fromRGBO(32, 96, 214, 1),
};
MaterialColor redColor = MaterialColor(0xffe63552, redColorCode);
MaterialColor blueColor = MaterialColor(0xff2060d6, blueColorCode);

List<String> images = const [
  "https://i.imgur.com/IYFh9ge.png", //patience_1
  "https://i.imgur.com/b1ig2sP.png", //patience_2
  "https://i.imgur.com/eXerQn9.png", //google certificate
  "https://i.imgur.com/c8Cv08K.png", //ladybug certificate
  "https://i.imgur.com/sIkuLqu.jpg", //dotosave_1
  "https://i.imgur.com/qZaEt8Q.png", //dotosave_2
  "https://i.imgur.com/njzGimS.png", //dotosave_3
  "https://i.imgur.com/jHlIKYv.jpg", //chemtrack
  "https://i.imgur.com/Cmn6dVx.jpg", //kms_1
  "https://i.imgur.com/6Pt96N1.jpg", //kms_2
  "https://i.imgur.com/8dmUGkN.png", //its here
  "https://i.imgur.com/YiiKrCw.png", //its here 2
  "https://i.imgur.com/z1RPY2d.png", //its here
  "https://i.imgur.com/gtwbNoa.jpg", //its here
  "https://i.imgur.com/kGMCjXL.jpg", //its here
  "https://i.imgur.com/A2OrgbR.jpg", //its here
  "https://i.imgur.com/0s0vdER.png", //certificate
  "https://i.imgur.com/GzfjiPe.jpg", //graduation
];

List<String> unsortedImages = const [
  "https://i.imgur.com/yZl84gc.png", //chem 2
  "https://i.imgur.com/2xilfWe.png", //chem 3
];
List<PolaroidModel> polaroidImages = [
  PolaroidModel(
    imageUrl: images[0],
    frontText: PolaroidText(
        text: "Love this project, with all of my heart!", fontFamily: 'Love'),
    backText: PolaroidText(
        text: "Jeg har savnet det", fontFamily: 'Love', fontSize: 26),
  ),
  PolaroidModel(
    imageUrl: images[4],
    frontText:
        PolaroidText(text: "The gang beated it, again!", fontFamily: 'Coffee'),
    backText: PolaroidText(
        text:
            "1st time I led a team, to participate and win a hackathon. Proud of myself",
        fontFamily: 'Coffee',
        fontSize: 26),
  ),
  PolaroidModel(
    imageUrl: images[17],
    frontText: PolaroidText(
        text: "Graduation day!", fontFamily: 'Coffee', fontSize: 20),
    backText: PolaroidText(
        text: "Time flies so fast. You have burnt bright!",
        fontFamily: 'Coffee',
        fontSize: 26),
  ),
];
