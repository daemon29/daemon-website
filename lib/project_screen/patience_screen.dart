import 'package:daemon_website/constants.dart';
import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PatienceScreen extends StatelessWidget {
  const PatienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              expandedHeight: 300.0,
              // collapsedHeight: 0,
              // toolbarHeight: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/kms_hackathon.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      margin: titlePadding,
                      child: Text(
                        "Patience Healthcare Navigator (Title)",
                        style: title,
                      ),
                    ),
                    Container(
                      margin: subtitlePadding,
                      child: Text(
                        "An app created by someone and something subtitle",
                        style: subtitle,
                      ),
                    ),
                    Container(
                      margin: header1Padding,
                      child: Text(
                        "Intro (Header 1)",
                        style: header_1,
                      ),
                    ),
                    Container(
                      margin: header2Padding,
                      child: Text(
                        "Intro (Header 2)",
                        style: header_2,
                      ),
                    ),
                    Container(
                      margin: bodyTextPadding,
                      child: Text(
                        "Body text (body), this is a long parahashdasdjasdnasjdnajsdnjasdbajsdbasjdbajsbdjasbdajsdbajsdbajsbdajsdbajsdbajdbasjdbasjdbajd",
                        style: body_1,
                      ),
                    ),
                    Container(
                      margin: bodyTextPadding,
                      child: Text(
                        "Body text 2 parahashdasdjasdnasjdnajsdnjasdbajsdbasjdbajsbdjasbdajsdbajsdbajsbdajsdbajsdbajdbasjdbasjdbajd",
                        style: body_1,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: YoutubePlayerIFrame(
                        controller: YoutubePlayerController(
                          initialVideoId: '1a0VJx-mTbk',
                        ),
                      ),
                    ),
                    Container(
                      margin: bodyTextPadding,
                      child: Text(
                        "Body text (body), this is",
                        style: body_1,
                      ),
                    ),
                    Container(
                      margin: bodyTextPadding,
                      child: RichText(
                          text: TextSpan(style: body_1, children: [
                        const TextSpan(text: "Hello, please follow this "),
                        TextSpan(
                            text: "link",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => openLink(
                                  "https://www.consumerfinance.gov/complaint/getting-started/"),
                            style: GoogleFonts.tinos(
                                fontSize: 18, color: Colors.blueAccent))
                      ])),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
