import 'package:daemon_website/constants.dart';
import 'package:flutter/material.dart';
import 'package:span_builder/span_builder.dart';
import 'package:url_launcher/url_launcher.dart';

final chemtrackerAuthor = SpanBuilder(
        "Authors: Tuan Nguyen, Mackenzie Gage, Daniel Hafner, Michael Lawrence, Theodore Lee, Tommy Ngo, Isaiah Shikina, Devon Wilson")
    .apply(const TextSpan(
        text: "Authors:", style: TextStyle(fontWeight: FontWeight.bold)))
    .apply(TextSpan(text: "Tuan Nguyen", style: hyperLink),
        onTap: () => launch("https://www.linkedin.com/in/tuan-nguyen-0129/"));
