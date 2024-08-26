import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/app_model.dart';
import '../models/color_model.dart';
import '../models/device_model.dart';
import '../models/exceprience_model.dart';
import '../models/skills_model.dart';
import '../screen/miniprojects/about/about.dart';
import '../screen/miniprojects/education/education.dart';
import '../screen/miniprojects/experience/exprience.dart';
import '../screen/miniprojects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.onePlus8Pro,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
      title: "About",
      color: Colors.white,
      icon: Icons.person,
      screen: const AboutMe()),
  AppModel(
      title: "Skills",
      color: Colors.white,
      icon: Icons.ac_unit_rounded,
      screen: const Skills()),
  AppModel(
    title: "Youtube",
    assetPath: "assets/icons/youtube.svg",
    color: Colors.white,
    link: youtubeChannel,
  ),
  AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/linkedin.svg",
    color: Colors.white,
    link: linkedIn,
  ),
  AppModel(
    title: "Twitter/X",
    assetPath: "assets/icons/twitter.svg",
    color: Colors.white,
    link: instagram,
  ),
  AppModel(
    title: "Topmate",
    assetPath: "assets/icons/topMate.png",
    color: Colors.white,
    link: topMate,
  ),
  AppModel(
      title: "Experience",
      color: Colors.white,
      icon: FontAwesomeIcons.idBadge,
      screen: const Experience()),
  AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: const Education(),
  ),
  AppModel(
    title: "Github",
    assetPath: "assets/icons/github.svg",
    color: Colors.white,
    link: github,
  ),
  AppModel(
    title: "Play Store",
    assetPath: "assets/icons/playstore.svg",
    color: Colors.white,
    link: playApps,
  ),
];

final List<JobExperience> education = [

  JobExperience(
    color: Colors.red,
    location: "Cuddalore, India",
    title: 'Computer Application',
    company: 'ST.Joseph College',
    startDate: 'June 2020',
    endDate: 'May 2023',
    bulletPoints: [
      "",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Chennai,Vellacherry",
    title: 'Software Testing with Selenium Java ',
    company: 'Besant Technology ',
    startDate: 'Jun 2023',
    endDate: 'Nov 2023',
    bulletPoints: [
      'Learning get Trained in Software Testing in Manual and Automation Testing Using Selenium Java',
      'Also Trained in SQL Database Creation',
    ],
  ),
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.redAccent,
    location: "pondicherry",
    title: 'Flutter Developer',
    company: 'Promethean Software Solution',
    startDate: 'Oct 2022',
    endDate: 'working',
    bulletPoints: [
      "Vast Selection: Browse through a curated collection of shoes from top brands and emerging designers.",
      "Easy Navigation: Seamlessly explore categories, filter by size, color, brand, or price, and find the perfect pair with ease.",
      "Discover the latest trends and timeless classics in footwear with our online shoe-selling app.",
      "Acquire proficiency in server-driven UI setup, optimizing app flexibility and scalability through dynamic configuration.",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Chennai, India",
    title: 'Customer Support',
    company: 'Cams',
    startDate: 'jan 2024',
    endDate: 'feb 2024',
    bulletPoints: [
      "As a Customer Support Specialist for our Computer-Aided Management System (CAMS).",
      "You will be the primary point of contact for our clients.",
      "providing expert assistance and ensuring a seamless user experience.",
      "Your role involves understanding the technical aspects of CAMS, troubleshooting issues",
      "Guiding customers through the system's functionalities.",
    ],
  ),
  // Add more job experiences here...

  // JobExperience(
  //   color: Colors.orangeAccent,
  //   location: "Remote",
  //   title: 'App Architecture Intern',
  //   company: 'Habeato',
  //   startDate: 'Oct 2021',
  //   endDate: 'Nov 2021',
  //   bulletPoints: [
  //     "Collaborated with founders to develop a HealthifyMe clone, demonstrating strong teamwork and app development skills.",
  //     "Engineered complex animations to enhance user experience and app visual appeal.",
  //     "Played an active role in system design processes, contributing to efficient and scalable app architecture.",
  //   ],
  // ),
  JobExperience(
    color: Colors.greenAccent,
    location: "Remote",
    title: 'Helping Hands',
    company: 'FreeLancer',
    startDate: 'mar 2024',
    endDate: 'On Going',
    bulletPoints: [
      "Food Donating App its helps people who's are homeless ",
      'According to india report 40% of foods wasted in Indian wedding ',
      'Main Aim is recover that foods and distribute to Homeless People '
    ],
    // ),
    // JobExperience(
    //   color: Colors.black,
    //   location: "Remote",
    //   title: 'Flutter App Intern',
    //   company: 'Cogent Web Services',
    //   startDate: 'Dec 2020',
    //   endDate: 'June 2021',
    //   bulletPoints: [
    //     "Independently developed a Life Simulator game using Flutter from scratch, applying state-of-the-art state management practices to ensure a top-tier user experience.",
    //     "Leveraged Flutter's robust features to craft an immersive and captivating gameplay experience, demonstrating proficiency in app development.",
    //     "Successfully implemented Google Ads, in-app purchases, and Hive database for efficient user data storage and monetization strategies.",
    //     "Generated creative ideas for client pitches, fostering creativity and ensuring the game's entertainment value and thought-provoking nature.",
    //     "Published the game on the Play Store, achieving over 5,000 downloads, showcasing the ability to deliver a popular and engaging mobile application.",
    //   ],
  ),
];

const String youtubeChannel = "";
const String linkedIn = "https://www.linkedin.com/in/mohamed-irfan-m-i-9a426a272/";
const String github = "https://github.com/mohamedirfan02";
const String instagram = "";
const String topMate = "";
const String resumeLink =
    "https://drive.google.com/file/d/10MK9iDJVN9-lF5786DH1sW8-RRE56iD3/view?usp=drive_link";
const String email = "mohamedirfanmohamed8@gmail.com";
String introduction =
    "Welcome to my portfolio website, this website is highly inspired(almost copied) from Pawan Kumar.I am a Developer with 1 years of experience in flutter. Worked in many Depts most recently worked with Promethean Software Solution an application that helps Homeless Peoples to get foods.\n\nWhen i am not developing I am mainly watching some movies or series or making stuff on Youtube or just watching fireship";
const String playApps =
    "";

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue, iconPath: "random"),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Riverpod",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "CI/CD",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Code Magic",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.yellow,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Tamil", colorS: Colors.orange),
  // SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(skillName: "English", colorS: Colors.blueGrey),
];
