import 'package:daemon_website/models/project_model_list.dart';
import 'package:daemon_website/widgets/project_tile.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          ProjectTile(model: patienceModel),
          ProjectTile(model: itshereModel),
          ProjectTile(model: chemtrackerModel),
        ],
      ),
    );
  }
}
