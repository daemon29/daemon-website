import 'package:daemon_website/project_list.dart';
import 'package:daemon_website/project_screen/patience_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectViewProvider extends ChangeNotifier {
  String? route;
  late List<Widget> pages;
  late PageController pageController;

  ProjectViewProvider() {
    pages = const [ProjectList(), PatienceScreen()];
    pageController = PageController(initialPage: 0);
  }
  void updateProjectViewPage(Widget newWidget) {
    pages[1] = newWidget;
    notifyListeners();
  }

  void goForward() {
    pageController.animateToPage(1,
        duration: const Duration(milliseconds: 800), curve: Curves.ease);
  }

  void goBack() {
    pageController.animateToPage(0,
        duration: const Duration(milliseconds: 800), curve: Curves.ease);
  }
}

void openLink(String link) {
  try {
    launch(link);
  } catch (e) {
    throw 'Could not launch $link';
  }
}
