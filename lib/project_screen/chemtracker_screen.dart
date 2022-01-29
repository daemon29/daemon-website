import 'package:daemon_website/constants.dart';
import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:daemon_website/text_spans/chemtracker_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:span_builder/span_builder.dart';

class ChemTrackerScreen extends StatelessWidget {
  const ChemTrackerScreen({Key? key}) : super(key: key);

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
                      images[7],
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
                            "Capstone Project - ChemTracker",
                            style: title,
                          ),
                        ),
                        Container(
                          margin: subtitlePadding,
                          child: Text(
                            "A web app used for storing chemicals history at a golf course. This app was created as a capstone project, proposed by PSU alumni.",
                            style: subtitle,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: SpanBuilderWidget(
                            defaultStyle: body_1,
                            text: chemtrackerAuthor,
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
                            "This web app is created with React, written in JavaScript, powered by AWS.\nUse DynamoDB as the database.\nAmazon API Gateway, to handle all interaction between client and database. (Write, Get, Update, Delete)\nAmazon Cognito for authentication.",
                            style: body_1,
                          ),
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "My role",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "Collaborate with the back-end team to create the structure for the database. The designing based on data type of each entry, the client’s requirement and app’s features.\nI implement the query commands, to query and return the specific result the app wants to display.\nI configure all the end-point with Amazon API Gateway, which is the interaction between client app and database, including writing a new record, updating an existing record, returning a single record, or returning records with filters(query), and deleting a record. Each interaction will have its own end-point and method.\nI write a small package, using Javascript for the front-end team. The small package contains all the interaction with DynamoDB, linked to API Gateway’s specific end-point, through a secured API key. This will save a lot of time for the front-end, they can simply receive the data with a simple callfunction.",
                            style: body_1,
                          ),
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "Features",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "The client can fill out the form, save, update and delete a record. They can search for multiple records with filters. There is a calendar, it displays the record for that specific date.",
                            style: body_1,
                          ),
                        ),
                        Image.network(unsortedImages[0]),
                        Image.network(unsortedImages[1]),
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
          Positioned(
              child: IconButton(
                  iconSize: 30,
                  color: redColor,
                  onPressed: () =>
                      Provider.of<ProjectViewProvider>(context, listen: false)
                          .goBack(),
                  icon: const Icon(Icons.chevron_left)))
        ],
      ),
    );
  }
}
