import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nil/nil.dart';

class FlipCard extends StatefulWidget {
  final Widget front, rear;
  const FlipCard({Key? key, this.front = nil, this.rear = nil})
      : super(key: key);

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {
  late bool _displayFront;
  @override
  void initState() {
    super.initState();
    _displayFront = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _displayFront = !_displayFront;
        });
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        child: _displayFront
            ? SizedBox(
                key: const ValueKey(true),
                child: widget.front,
              )
            : SizedBox(
                key: const ValueKey(false),
                child: widget.rear,
              ),
        transitionBuilder: __transitionBuilder,
        layoutBuilder: (widget, list) => Stack(
          children: [widget ?? nil, ...list],
        ),
        switchInCurve: Curves.easeInBack,
        switchOutCurve: Curves.easeInBack.flipped,
      ),
    );
  }

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
        animation: rotateAnim,
        child: widget,
        builder: (context, widget) {
          final isUnder = (ValueKey(_displayFront) != widget?.key);
          var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
          tilt *= isUnder ? -1.0 : 1.0;
          final value =
              isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
          return Transform(
            transform: Matrix4.rotationY(value)..setEntry(3, 0, tilt),
            child: widget,
            alignment: Alignment.center,
          );
        });
  }
}
