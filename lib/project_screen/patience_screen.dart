import 'package:daemon_website/constants.dart';
import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:daemon_website/text_spans/patience_text.dart';
import 'package:daemon_website/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:span_builder/span_builder.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class PatienceScreen extends StatelessWidget {
  const PatienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Scrollbar(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 300.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      images[0],
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
                            "Patience Healthcare Navigator",
                            style: title,
                          ),
                        ),
                        Container(
                          margin: subtitlePadding,
                          child: Text(
                            "A set of tools and resources to help you navigate the US healthcare system and avoid surprise medical bills. The app can be found on Google Playstore and App Store. This project is submitted to Google Solution Challenge, and achieves the top 50 across the globe.",
                            style: subtitle,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: SpanBuilderWidget(
                            defaultStyle: body_1,
                            text: patienceAuthor,
                          ),
                        ),
                        SpanBuilderWidget(
                          defaultStyle: body_1,
                          text: patienceColab,
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: SpanBuilderWidget(
                            defaultStyle: body_1,
                            text: patienceLinkAndroid,
                          ),
                        ),
                        SpanBuilderWidget(
                          defaultStyle: body_1,
                          text: patienceLinkiOS,
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "What is this project about?",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "The goal of Patience Healthcare Navigator is to empower the average American with knowledge and tools to help them navigate the confusing and expensive healthcare system in the US, Our app provides education about insurance system, how to avoid out-of-network/surprise medical bills, what to do if you receive a surprise bill, and more. ",
                            style: body_1,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "You can take a view our demo video, created by an awesome partner",
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
                          margin: header2Padding,
                          child: Text(
                            "Tech specs",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            """This app is created with: Flutter (an adaptive solution, allow you to create apps across platform) \nFirebase for Analytics (this help use analyze user's experience) \nGoogle Cloud Services such as Google Places API, Cloud Functions and Big Query Database. They help us host the database, APIs and power some of the tools.""",
                            style: body_1,
                          ),
                        ),
                        Image.network(images[1]),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "My role and responsibilities",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            """I am the team leader, and Flutter Developer of this project. My responsibility spans across the project, from front to backend, design and research.\nI work closely with our test users and experts in the healthcare field.\nWe conduct various unit and integration tests, and release internal tests on the Play Store.\nDesign metrics to evaluate features in the app, measure and analyze with Firebase Analytics.""",
                            style: body_1,
                          ),
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "Google Solution Challenge",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "We submitted this project to Google Solution Challenge. It is a global event, hosted by Google, that addresses the 17 UN goals, and covers many topics such as Health, Clean Water, Life, etc.",
                            style: body_1,
                          ),
                        ),
                        Image.network(images[2]),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "Our project was nominated as in the top 50. Enrolling in this challenge gave us a lot of opportunity to grow, as coding and making the product is just a part of the work, how to deliver it to the customers and make it successful in reality. We have the chance to work with experts at Google, as they gave us lots of advice in our decision making and future of the project.",
                            style: body_1,
                          ),
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "Our knowledge is legit",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "All the knowledge and information in our app are the result of intensive research. We also have the app consulted with the experts in the field, who deal with patients, medical bills and health insurance everyday. We constantly update the knowledge in our app, to make sure it is up-to-date, trustworthy and reliable. ",
                            style: body_1,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Positioned(top: 5, left: 5, child: CustomBackButton()),
        ],
      ),
    );
  }
}
