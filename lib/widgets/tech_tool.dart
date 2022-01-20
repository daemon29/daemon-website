import 'package:flutter/material.dart';

class TechTool extends StatelessWidget {
  final String asset, tooltip;
  const TechTool({Key? key, required this.asset, this.tooltip = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: ClipOval(
        child: Container(
          padding: const EdgeInsets.all(5),
          color: Colors.white,
          height: 24,
          child: Image.asset('assets/$asset.png'),
        ),
      ),
    );
  }
}