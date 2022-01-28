import 'package:daemon_website/models/project_tile_modal.dart';
import 'package:flutter/material.dart';

ProjectTileModal patienceModel = ProjectTileModal(
  'https://i.imgur.com/IYFh9ge.png',
  'Patience Healthcare Navigator',
  'A set of tools and resources to help you navigate the US healthcare system and avoid surprise medical bills.',
  'Jan 2021 - Jan 2022',
  borderColor: const Color(0xff8e2686),
  tag: 'patience',
  flare: 'star',
  techTools: [
    TechToolModal(
      'firebase',
      'This project uses Firebase for Analytics',
    ),
    TechToolModal(
      'flutter',
      'This project is powered by Flutter',
    ),
    TechToolModal(
      'android',
      'This app is available on Android',
    ),
    TechToolModal(
      'ios',
      'This app is available on iOS',
    ),
    TechToolModal(
      'gcp',
      'This project uses Google Services',
    ),
  ],
);
ProjectTileModal itshereModel = ProjectTileModal(
  'https://i.imgur.com/8dmUGkN.png',
  "It's Here - a Unity game",
  'The game aims to reflect the violence happening around us everyday. We want to share our perspective, illustrate the “violence”, and spread awareness.',
  'Feb 2018 - March 2018',
  tag: 'itshere',
  flare: 'prize',
  borderColor: Colors.black,
  techTools: [
    TechToolModal(
      'unity',
      'This project is created with Unity 3D',
    ),
  ],
);
ProjectTileModal chemtrackerModel = ProjectTileModal(
  'https://i.imgur.com/jHlIKYv.jpg',
  "Capstone Project - ChemTracker",
  "A web app used for storing chemicals history at a golf course.",
  'Jan 2021 - May 2021',
  tag: 'chemtracker',
  borderColor: const Color(0xff006838),
  techTools: [
    TechToolModal(
      'react',
      'This project is created with React',
    ),
    TechToolModal(
      'aws',
      'This app uses  Amazon Web Services',
    ),
  ],
);
