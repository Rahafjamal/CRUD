import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri facebookurl =
    Uri.parse('https://web.facebook.com/culaccino.coffee.house');
final Uri instaurl = Uri.parse(
    'https://www.instagram.com/culaccino_coffee_house/?igshid=ODBkMDk1MTU%3D&fbclid=IwAR14Web9kpNbZeRnsXxkozvJO4zHhDhoCYFq8PCJmz2LwS2n2Y5fTFSNXiMe');

Future<void> facefun() async {
  if (!await launchUrl(facebookurl)) {
    throw 'Could not launch $facebookurl';
  }
}

Future<void> instafun() async {
  if (!await launchUrl(instaurl)) {
    throw 'Could not launch $instaurl';
  }
}

class URLclass extends StatelessWidget {
  URLclass({
    required this.mylatfotmtitle,
    required this.mylatformsubtitle,
    required this.mylatformicon,
    required this.myfunction,
  });

  final String? mylatfotmtitle;
  String? mylatformsubtitle;
  IconData? mylatformicon;
  Function()? myfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Container(
        child: ListTile(
          title: Text("$mylatfotmtitle"),
          subtitle: Text("$mylatformsubtitle"),
          leading: Icon(mylatformicon),
        ),
      ),
    );
  }
}
