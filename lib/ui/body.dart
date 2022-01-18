import 'package:flutter/material.dart';
import 'package:mainprojectone/ui/colors.dart';

import 'details.dart';
import 'view.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6CADDF),
      body: ListView(
        children: [
          boxesOne(),
          secondDetail(listNum: 0, navigateWidget: const ViewPlayers()),
          boxesPlayers(),
          secondDetail(listNum: 1, navigateWidget: const ViewResults()),
          boxesResults(x: 0.7),
          secondDetail(listNum: 2, navigateWidget: const ViewFixtures()),
          boxesFixtures(x: 0.7),
        ],
      ),
    );
  }

  secondDetail({required int listNum, required Widget navigateWidget}) {
    int num = listNum * 2;
    var listContent = [
      'PLAYERS',
      'squad for season 2021/22',
      'RESULTS',
      'resent results in PL,UCL and other comp.',
      'FIXTURES',
      'upcomming matches in PL,UCl and FA cup'
    ];
    String listString1 = listContent[num];
    String listString2 = listContent[num + 1];

    return Column(
      children: [
        ListTile(
          trailing: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => navigateWidget),
              );
            },
            child: Text(
              "View all >",
              style: TextStyle(
                  color: Colors.green.shade100,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ),
          title: Text(
            listString1,
            style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          subtitle: Text(
            listString2,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

Container boxOne({Color? color, int? len}) {
  var p = len ?? 1;
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 10,
    ),

    // alignment: Alignment.center,

    decoration: BoxDecoration(
      color: color ?? Colors.lightGreen.shade300,
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
          image: AssetImage(
            'images/$p.jpg',
          ),
          fit: BoxFit.cover),
      boxShadow: const [
        BoxShadow(
          color: Colors.black54,
          offset: Offset(
            2.0,
            2.0,
          ),
          blurRadius: 5.0,
          spreadRadius: 2.0,
        ),
      ],
    ),
  );
}

Container box({Color? color, int? len}) {
  var p = len ?? 1;
  return Container(
    // alignment: Alignment.cent
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: color ?? Colors.lightGreen.shade300,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      image: DecorationImage(
          image: AssetImage(
            'images/$p.jpg',
          ),
          fit: BoxFit.cover),
      boxShadow: const [
        BoxShadow(
          color: Colors.black54,
          offset: Offset(
            2.0,
            2.0,
          ),
          blurRadius: 5.0,
          spreadRadius: 2.0,
        ),
      ],
    ),
  );
}

SizedBox boxesOne({double? x}) {
  return SizedBox(
    height: 200,
    child: PageView(
      controller: PageController(initialPage: 0, viewportFraction: x ?? 0.85),
      children: [
        boxOne(color: Colors.lightGreen.shade300, len: 1),
        boxOne(color: Colors.yellow.shade300, len: 2),
        boxOne(color: Colors.red.shade400, len: 3),
        boxOne(color: Colors.lightBlue.shade300, len: 4),
      ],
    ),
  );
}

SizedBox boxesFixtures({double? x, double? hei, Axis? axisDirection}) {
  return SizedBox(
    height: 200,
    child: PageView(
      pageSnapping: false,
      scrollDirection: axisDirection ?? Axis.horizontal,
      controller: PageController(initialPage: 1, viewportFraction: x ?? 0.6),
      children: [
        
        fixtureBox(club1B: 'southampton', club1ColorB: sou),
        fixtureBox(club2B: 'fulham', club2ColorB: ful),
        fixtureBox(club1B: 'brentford', club1ColorB: bre),
        fixtureBox(club1B: 'norwich', club1ColorB: nor),
        fixtureBox(club1B: 'sporting', club1ColorB: spo),
      ],
    ),
  );
}

SizedBox boxesResults({double? x, double? hei, Axis? axisDirection}) {
  return SizedBox(
    height: hei ?? 200,
    child: PageView(
      pageSnapping: false,
      scrollDirection: axisDirection ?? Axis.horizontal,
      controller: PageController(initialPage: 1, viewportFraction: x ?? 0.6),
      children: [
        resultsBox(club2B: 'chelsea', club2ColorB: che),
        resultsBox(club1B: 'swindon', club1ColorB: swi),
        resultsBox(club1B: 'arsenal', club1ColorB: ars),
        resultsBox(club1B: 'brentford', club1ColorB: bre),
        resultsBox(club1B: 'leicester', club1ColorB: lei),
        resultsBox(club1B: 'newcastle', club1ColorB: cas),
      ],
    ),
  );
}

SizedBox boxesPlayers({double? x, double? hei, Axis? axisDirection}) {
  return SizedBox(
    height: hei ?? 200,
    child: PageView(
      pageSnapping: false,
      scrollDirection: axisDirection ?? Axis.horizontal,
      controller: PageController(initialPage: 1, viewportFraction: x ?? 0.5),
      children: [
        box(color: Colors.lightGreen.shade300, len: 11),
        box(color: Colors.yellow.shade300, len: 12),
        box(color: Colors.red.shade400, len: 13),
        box(color: Colors.lightBlue.shade300, len: 14),
        box(color: Colors.lightBlue.shade300, len: 15),
        box(color: Colors.lightBlue.shade300, len: 16),
      ],
    ),
  );
}

textList({required String forTitle}) {
  String listString = forTitle;
  return Text(
    listString,
    style: const TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
  );
}
