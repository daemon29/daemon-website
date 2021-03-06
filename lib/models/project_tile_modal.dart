import 'package:flutter/material.dart';

class ProjectTileModal {
  String image, projectName, description, startEndDate, tag;
  String? flare;
  Color borderColor;
  List<TechToolModal> techTools;
  ProjectTileModal(
      this.image, this.projectName, this.description, this.startEndDate,
      {this.techTools = const [],
      this.borderColor = const Color(0xffffffff),
      this.flare,
      this.tag = ''});
}

class TechToolModal {
  String asset, tooltip;
  TechToolModal(this.asset, this.tooltip);
}
