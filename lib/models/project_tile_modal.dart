import 'package:flutter/material.dart';

class ProjectTileModal {
  String image, projectName, description, startEndDate;
  String? flare;
  Color borderColor;
  Widget? projectScreen;
  List<TechToolModal> techTools;
  ProjectTileModal(
      this.image, this.projectName, this.description, this.startEndDate,
      {this.techTools = const [],
      this.borderColor = const Color(0xffffffff),
      this.flare,this.projectScreen});
}

class TechToolModal {
  String asset, tooltip;
  TechToolModal(this.asset, this.tooltip);
}
