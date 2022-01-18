import 'package:daemon_website/constants.dart';
import 'package:daemon_website/models/project_tile_modal.dart';
import 'package:daemon_website/widgets/tech_tool.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTile extends StatefulWidget {
  final ProjectTileModal model;
  const ProjectTile({required this.model, Key? key}) : super(key: key);
  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutExpo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: MouseRegion(
            onEnter: (e) {
              _controller.forward();
            },
            onExit: (e) {
              _controller.reverse();
            },
            cursor: SystemMouseCursors.click,
            child: Stack(
              children: [
                Material(
                  elevation: 5,
                  borderRadius: borderRound_1,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: widget.model.borderColor, width: 1.5),
                      borderRadius: borderRound_1,
                    ),
                    width: 200,
                    // height: 150,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/background.png',
                          height: 80,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(8, 3, 8, 0),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxHeight: 16),
                              child: Text(
                                // max character: 32
                                widget.model.projectName,
                                style: GoogleFonts.roboto(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
                          child: SizeTransition(
                            sizeFactor: _animation,
                            child: Text(
                              widget.model.description,
                              style: GoogleFonts.roboto(
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8, bottom: 5),
                            child: Text(
                              widget.model.startEndDate,
                              style: GoogleFonts.openSans(
                                  fontSize: 6, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                widget.model.flare == null
                    ? const SizedBox.shrink()
                    : Positioned(
                        child: Image.asset(
                          'assets/${widget.model.flare}.png',
                          height: 24,
                          width: 24,
                        ),
                        top: 10,
                        left: 8,
                      ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Wrap(
            spacing: 5,
            children: widget.model.techTools
                .map((e) => TechTool(asset: e.asset, tooltip: e.tooltip))
                .toList())
      ],
    );
  }
}
