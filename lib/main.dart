import 'package:daemon_website/constants.dart';
import 'package:daemon_website/image_list.dart';
import 'package:daemon_website/project_view.dart';
import 'package:daemon_website/widgets/expandable_fab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  // GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      title: 'Daemon Nguyen',
      scrollBehavior: const ConstantScrollBehavior(),
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: blueColor)
            .copyWith(secondary: redColor),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(primary: blueColor, secondary: redColor),
        brightness: Brightness.dark,
      ),
    );
  }

  final router = GoRouter(
    redirect: (GoRouterState state) {
      return null;
    },
    urlPathStrategy: UrlPathStrategy.path,
    initialLocation: '/home',
    routes: [
      GoRoute(
        name: 'home',
        path: '/home',
        pageBuilder: (context, state) {
          final page = state.queryParams['id'];
          return MaterialPage(
              child: DaemonWebsite(
            projectId: page,
          ));
        },
      )
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
          child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ));
    },
  );
}

class DaemonWebsite extends StatelessWidget {
  final String? projectId;
  const DaemonWebsite({Key? key, this.projectId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
      ),
      floatingActionButton: ExpandableFab(
        distance: 150,
        button: Image.asset('assets/vietnam-dash.png'),
        children: [
          ActionButton(
            iconSize: 40,
            onPressed: () =>
                launch("https://www.linkedin.com/in/tuan-nguyen-0129/"),
            tooltip: 'Connect me on LinkedIn',
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              color: blueColor,
            ),
          ),
          ActionButton(
            iconSize: 40,
            onPressed: () => launch("https://github.com/daemon29"),
            tooltip: 'Check out my awesome repos',
            icon: const FaIcon(
              FontAwesomeIcons.github,
              color: Colors.black,
            ),
          ),
          ActionButton(
            iconSize: 40,
            onPressed: () {},
            tooltip: 'Follow me on Twitter',
            icon: const FaIcon(
              FontAwesomeIcons.twitter,
              color: Color(0xff1DA1F2),
            ),
          ),
          ActionButton(
            iconSize: 40,
            onPressed: () => launch("mailto:nguyen.daemon@gmail.com"),
            tooltip: 'Contact me via email',
            icon: const FaIcon(
              FontAwesomeIcons.google,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          opacity: 0.5,
          image: AssetImage(
            'assets/background.png',
          ),
          fit: BoxFit.cover,
        )),
        child: Row(
          children: [
            const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ImageList(),
                )),
            Expanded(
              flex: 5,
              child: ProjectView(
                page: projectId,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ConstantScrollBehavior extends ScrollBehavior {
  const ConstantScrollBehavior();

  @override
  Widget buildScrollbar(
          BuildContext context, Widget child, ScrollableDetails details) =>
      child;

  @override
  Widget buildOverscrollIndicator(
          BuildContext context, Widget child, ScrollableDetails details) =>
      child;

  @override
  TargetPlatform getPlatform(BuildContext context) => TargetPlatform.macOS;

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics());
}
