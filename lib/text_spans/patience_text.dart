import 'package:daemon_website/constants.dart';
import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:span_builder/span_builder.dart';
import 'package:url_launcher/url_launcher.dart';

final patienceAuthor =
    SpanBuilder("Authors: Tuan Nguyen (me) and Leilani Hagen (my teammate).")
        .apply(const TextSpan(
            text: "Authors:", style: TextStyle(fontWeight: FontWeight.bold)))
        .apply(TextSpan(text: "Tuan Nguyen", style: hyperLink),
            onTap: () =>
                launch("https://www.linkedin.com/in/tuan-nguyen-0129/"))
        .apply(TextSpan(text: "Leilani Hagen", style: hyperLink), onTap: () {
  launch("https://www.linkedin.com/in/leilanihagen/");
});
final patienceColab = SpanBuilder(
        "Mentor & Collaborator: Rohan Kadkol (Flutter Expert at Google), Greg Brosman (Product Manager at Google)")
    .apply(
  const TextSpan(
    text: "Mentor & Collaborator:",
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
)
    .apply(TextSpan(text: "Rohan Kadkol", style: hyperLink), onTap: () {
  launch("https://www.linkedin.com/in/rohan-kadkol/");
}).apply(TextSpan(text: "Greg Brosman", style: hyperLink), onTap: () {
  launch("https://www.linkedin.com/in/greg-brosman-532b0823/");
});
