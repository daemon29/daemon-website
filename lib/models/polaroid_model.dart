import 'package:daemon_website/models/polaroid_text.dart';
import 'package:flutter/material.dart';

class PolaroidModel {
  PolaroidText? frontText, backText;
  String imageUrl;
  Alignment backTextAlignment;
  PolaroidModel({
    this.frontText,
    this.backText,
    required this.imageUrl,
    this.backTextAlignment = Alignment.center,
  });
}
