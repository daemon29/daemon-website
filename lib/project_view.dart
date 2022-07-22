import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProjectView extends StatelessWidget {
  final String? page;
  const ProjectView({Key? key, this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProjectViewProvider(page),
      child: Consumer<ProjectViewProvider>(
        builder: (context, model, child) {
          return PageView(
            children: model.pages,
            controller: model.pageController,
          );
        },
      ),
    );
  }
}
