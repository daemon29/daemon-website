import 'package:daemon_website/constants.dart';
import 'package:daemon_website/models/project_tile_modal.dart';
import 'package:daemon_website/providers/project_view_provider.dart';
import 'package:daemon_website/widgets/tech_tool.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
          onTap: () => Provider.of<ProjectViewProvider>(context, listen: false)
              .goForward(widget.model.tag),
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
                      border:
                          Border.all(color: widget.model.borderColor, width: 2),
                      borderRadius: borderRound_1,
                    ),
                    width: 400,
                    // height: 150,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          widget.model.image,
                          height: 160,
                          width: 400,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxHeight: 70),
                              child: Text(
                                // max character: 32
                                widget.model.projectName,
                                style: GoogleFonts.roboto(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: SizeTransition(
                            sizeFactor: _animation,
                            child: Text(
                              widget.model.description,
                              style: GoogleFonts.roboto(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 5),
                            child: Text(
                              widget.model.startEndDate,
                              style: GoogleFonts.openSans(
                                  fontSize: 10, fontWeight: FontWeight.bold),
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
                          height: 60,
                          width: 50,
                        ),
                        top: 10,
                        left: 10,
                      ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
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
