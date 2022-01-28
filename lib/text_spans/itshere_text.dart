import 'package:daemon_website/constants.dart';
import 'package:flutter/material.dart';
import 'package:span_builder/span_builder.dart';
import 'package:url_launcher/url_launcher.dart';

final itshereAuthor = SpanBuilder(
        "Authors: Tuan Nguyen, Phuc Tran, Thu Tran, Trang Nguyen, Tuan Tran (we are not blood-related even though we share the same last name)")
    .apply(const TextSpan(
        text: "Authors:", style: TextStyle(fontWeight: FontWeight.bold)))
    .apply(TextSpan(text: "Tuan Nguyen", style: hyperLink),
        onTap: () => launch("https://www.linkedin.com/in/tuan-nguyen-0129/"));
final itshereLink = SpanBuilder(
        "Source code: Follow this link, you can find the game file here as well.")
    .apply(const TextSpan(
        text: "Source code:", style: TextStyle(fontWeight: FontWeight.bold)))
    .apply(TextSpan(text: "Follow this link", style: hyperLink),
        onTap: () => launch("https://github.com/daemon29/it-s-here"));
