import 'package:daemon_website/models/project_tile_modal.dart';
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
          ProjectTile(
            model: ProjectTileModal(
              'image',
              'Patience Healthcare Navigator',
              'An app that do something useful',
              'Jan 2021 - Current',
              borderColor: Colors.redAccent,
              techTools: [
                TechToolModal(
                  'firebase',
                  'This project uses Firebase for Analytics',
                ),
                TechToolModal(
                  'flutter',
                  'This project is powered by Flutter',
                ),
                TechToolModal(
                  'android',
                  'This app is available on Android',
                ),
                TechToolModal(
                  'ios',
                  'This app is available on iOS',
                ),
                TechToolModal(
                  'gcp',
                  'This project uses Google Services',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
