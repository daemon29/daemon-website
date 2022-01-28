import 'package:daemon_website/constants.dart';
import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:daemon_website/text_spans/itshere_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:span_builder/span_builder.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ItsHerescreen extends StatelessWidget {
  const ItsHerescreen({Key? key}) : super(key: key);

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
                      images[10],
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
                            "It's Here",
                            style: title,
                          ),
                        ),
                        Container(
                          margin: subtitlePadding,
                          child: Text(
                            "The game aims to reflect the violence happening around us everyday. We want to share our perspective, illustrate the “violence”, and spread awareness.",
                            style: subtitle,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: SpanBuilderWidget(
                            defaultStyle: body_1,
                            text: itshereAuthor,
                          ),
                        ),
                        SpanBuilderWidget(
                          defaultStyle: body_1,
                          text: itshereLink,
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            """“Violence” theme""",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "It’s here is inspired by a global issue that happens every day in the world - problems of violence. School violence, domestic violence, and child violence, ... all of these phrases seem to be only seen in newspapers as if it were a distant affair, but it's not. Maybe your classmate who is sitting at your table is being abused by his parents, maybe your sibling is being bullied at school and maybe the neighbor has had to undergo oppression from the people around him. Violence is much more than the physical aspect, it can also be cruel things to say, behaviors that make people mentally hurt.",
                            style: body_1,
                          ),
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "The name 'It's Here'",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "'It's here'- It's already here, it's here and it's happening. It is time for us to face reality and solve it. We have to find the victims to help them, give them a safe environment to speak up and protect each other, and overcome the difficulties together.",
                            style: body_1,
                          ),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: YoutubePlayerIFrame(
                            controller: YoutubePlayerController(
                              initialVideoId: 'W3nwTy5EJNc',
                            ),
                          ),
                        ),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "Rules of the Game",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "This game requires 2 people on 2 different devices to play.\nYou will enter a dark maze as a bright blue orb, and the other player will enter the other side of the maze as a pink orb.\nThe directive is 2 players must reach the light gate, located in the center of the maze. But here is the catch, the gate will not open until 2 players find each other in the map. \nOnce you have found your friend, the light gate will open, exploding shinning particles up to the sky.\nYou both need to get there and enter the gate. Then you win.",
                            style: body_1,
                          ),
                        ),
                        Image.network(images[12]),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "The Enemies",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "Inside this dark maze, there are many dark red orbs you must avoid. These dark red orbs will chase you if you are nearby, and will insult you ruthlessly.\nIf the orb touches you, you will be knocked out, and your light source will fade away (you lose health).\nIf you lose all health, the pure light blue/pink will completely disappear and you will become dark red, just like the enemy. You and your friend will lose at this point.\nThe dark red orb is slower than you, but there are many of them.",
                            style: body_1,
                          ),
                        ),
                        Image.network(images[11]),
                        Container(
                          margin: header2Padding,
                          child: Text(
                            "The novelty",
                            style: header_2,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "The dark maze represents the journey to escape violence. Dark and scary.\nThe color of the player is neither light blue nor pink, representing innocence, pureness, purity, like a baby.\nThe dark red orb represents the people inflicting violence in this world, where they will hurt you verbally, and physically. Everytime they touch you, your pure light fades away. The result is your pure light completely fade away (represent a soul die, give up, commit suicide, etc), or your light become dark red (you become what hurt you, you become violence, just as many children grow up and become abusive as the result of domestic violence, etc).\n2 players must find each other in order to open the gate. This is the message we want to share to the player. It is hard to overcome violence, but you are not alone. Love and protect people around you. Be there for them!",
                            style: body_1,
                          ),
                        ),
                        Container(
                          margin: bodyTextPadding,
                          child: Text(
                            "The game is created with Unity, during the Game UIT hackathon. We won 2 prizes with this game: Mentor Choice and Consolation.",
                            style: body_1,
                          ),
                        ),
                        Image.network(images[14]),
                        Image.network(images[13]),
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
