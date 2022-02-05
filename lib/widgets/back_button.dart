import 'package:daemon_website/constants.dart';
import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<ProjectViewProvider>(context, listen: false).goBack(),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: redColor),
        padding: const EdgeInsets.all(5),
        child: const Icon(
          Icons.chevron_left_rounded,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
