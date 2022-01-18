import 'package:daemon_website/project_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProjectViewProvider extends ChangeNotifier {
  List<Widget?> pages = [const ProjectList(), null];
  ProjectViewProvider();
}
