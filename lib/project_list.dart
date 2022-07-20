import 'package:daemon_website/models/polaroid_text.dart';
import 'package:daemon_website/models/project_model_list.dart';
import 'package:daemon_website/widgets/polaroid_widget.dart';
import 'package:daemon_website/widgets/project_tile.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            ProjectTile(model: patienceModel),
            ProjectTile(model: itshereModel),
            ProjectTile(model: chemtrackerModel),
            PolaroidWidget(
              polaroidText: PolaroidText(
                  text: "Love this project, with all of my heart!",
                  fontFamily: 'Love'),
            ),
            PolaroidWidget(
              image: "https://i.imgur.com/sIkuLqu.jpg",
              polaroidText: PolaroidText(
                text: "",
                fontFamily: 'Coffee',
                fontSize: 20,
              ),
            ),
            PolaroidWidget(
              image: "https://i.imgur.com/Cmn6dVx.jpg",
              polaroidText: PolaroidText(
                text: "Random text",
                fontFamily: 'Winkle',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
