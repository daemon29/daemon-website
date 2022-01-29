import 'package:flutter/material.dart';

class TechTool extends StatelessWidget {
  final String asset, tooltip;
  const TechTool({Key? key, required this.asset, this.tooltip = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        height: 50,
        child: Image.asset('assets/$asset.png'),
      ),
    );
  }
}
