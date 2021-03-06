import 'package:daemon_website/project_list.dart';
import 'package:daemon_website/project_screen/chemtracker_screen.dart';
import 'package:daemon_website/project_screen/itshere_screen.dart';
import 'package:daemon_website/project_screen/patience_screen.dart';
import 'package:flutter/material.dart';
import 'package:nil/nil.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectViewProvider extends ChangeNotifier {
  String? route;
  late List<Widget> pages;
  late PageController pageController;
  String? _currentRoute;
  ProjectViewProvider(String? page) {
    pages = [const ProjectList(), nil];
    setRoute(page);
    if (pages[1] == nil) {
      pageController = PageController(initialPage: 0);
    } else {
      pageController = PageController(initialPage: 1);
    }
  }
  void updateProjectViewPage(Widget newWidget) {
    pages[1] = newWidget;
    notifyListeners();
  }

  void goForward(String route) {
    setRoute(route);
    pageController.animateToPage(1,
        duration: const Duration(milliseconds: 600), curve: Curves.ease);
  }

  void setRoute(String? route) {
    if (route != _currentRoute) {
      switch (route) {
        case 'patience':
          pages[1] = const PatienceScreen();
          break;
        case 'itshere':
          pages[1] = const ItsHerescreen();
          break;
        case 'chemtracker':
          pages[1] = const ChemTrackerScreen();
          break;
        default:
      }
    }
    notifyListeners();
  }

  void goBack() {
    pageController.animateToPage(0,
        duration: const Duration(milliseconds: 600), curve: Curves.ease);
  }
}

void openLink(String link) {
  try {
    launch(link);
  } catch (e) {
    throw 'Could not launch $link';
  }
}
