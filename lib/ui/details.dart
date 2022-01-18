import 'package:flutter/material.dart';
import 'package:mainprojectone/ui/colors.dart';
import 'body.dart';

SizedBox boxesPlayersDetail({double? x, double? hei, Axis? axisDirection}) {
  return SizedBox(
    height: hei ?? 240,
    child: PageView(
      pageSnapping: false,
      scrollDirection: axisDirection ?? Axis.horizontal,
      controller: PageController(initialPage: 1, viewportFraction: x ?? 0.6),
      children: [
        boxesDetails(color: Colors.lightGreen.shade300, len: 11),
        boxesDetails(color: Colors.yellow.shade300, len: 12),
        boxesDetails(color: Colors.red.shade400, len: 13),
        boxesDetails(color: Colors.lightBlue.shade300, len: 14),
        boxesDetails(color: Colors.lightBlue.shade300, len: 15),
        boxesDetails(color: Colors.lightBlue.shade300, len: 16),
      ],
    ),
  );
}

SizedBox boxesDetails({Color? color, int? len}) {
  var p = len ?? 1;
  var info = [
    [
      'Bernado Silva',
      'Midfielder',
      'bernadosilva',
      'bernardocarvalhosilva',
    ],
    [
      'Ederson',
      'Goalkeeper',
      'ederson',
      'ederson93',
    ],
    [
      'Phil Foden',
      'Midfilder',
      'philFoden',
      'philfoden',
    ],
    [
      'Riyad Mahrez',
      'Midfilder',
      'riyad',
      'riyadmahrez26.7',
    ],
    [
      'Ruben Dias',
      'Defender',
      'rubenDias',
      'rubendias',
    ],
    [
      'John Stones ',
      'Defender',
      'Stones',
      'johnstonesofficial',
    ],
  ];
  return SizedBox(
    child: Stack(
      children: [
        box(len: p),
        Container(
          height: 90,
          width: 320,
          margin: const EdgeInsets.fromLTRB(40, 160, 0, 0),
          decoration: BoxDecoration(
            color: const Color(0xFF6CADDF).withOpacity(0.7),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(info[p - 11][0],
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w800)),
              Text(info[p - 11][1]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.facebook_outlined),
                  Text(info[p - 11][2]),
                  const Icon(Icons.pageview),
                  Text(info[p - 11][3]),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

SizedBox boxesResultsDetails({double? x, double? hei, Axis? axisDirection}) {
  return SizedBox(
    height: hei ?? 240,
    child: PageView(
      pageSnapping: false,
      scrollDirection: axisDirection ?? Axis.horizontal,
      controller: PageController(initialPage: 1, viewportFraction: x ?? 0.6),
      children: [
        //to show results
        resultsDetails(
            matchDate: 'Sat 15 Jan',
            score1:'1',
            score2:'0',
            goal1:'KDB(70)',
            goal2: ' ',
            compi: 'pl',
            club2: 'chelsea',
            club2Color: che),
        resultsDetails(
            matchDate: 'Fri 7 Jan',
            compi: 'facup',
            score1: '1',
            score2: '4',
            goal1: 'Harry(78)',
            goal2: 'Bernado(14)\nJesus(28)\nGundogan(59)\nPalmer(82)',
            club1: 'swindon',
            club1Color: swi),
        resultsDetails(
            matchDate: 'Sat 1 Jan',
            compi: 'pl',
            score1: '1',
            score2: '2',
            goal1: 'Saka(31)',
            goal2: 'Mahrez(57p)\nRodri(90+3)',
            club1: 'arsenal',
            club1Color: ars),
        resultsDetails(
            matchDate: 'Wed 29 Dec',
            compi: 'pl',
            score1: '0',
            score2: '1',
            goal1: '',
            goal2: 'Foden(16)',
            club1: 'brentford',
            club1Color: bre),
        resultsDetails(
            matchDate: 'Sun 26 Dec',
            compi: 'pl',
            score1: '6',
            score2: '3',
            goal1: 'KDB(5),Mahrez(14)\nGündo(21),Sterling(25,87),Laporte(69)',
            goal2: 'Maddi(55),Lookman(59)\nIheanacho(65)',
            club2: 'leicester',
            club2Color: lei),
        resultsDetails(
            matchDate: 'Sun 19 Dec',
            compi: 'pl',
            score1: '0',
            score2: '4',
            goal1: '',
            goal2: 'Dias(5)\nCancelo(27)\nMahrez(63)\nSterling(86)',
            club1: 'newcastle',
            club1Color: cas),
      ],
    ),
  );
}

Container resultsDetails({
  String? club1,
  Color? club1Color,
  String? club2,
  Color? club2Color,
  required String matchDate,
  required String compi,
  required String score1,
  required String score2,
  required String goal1,
  required String goal2,
}) {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    
    child: Stack(
      children: [
        resultsBox(
            club1B: club1,
            club1ColorB: club1Color,
            club2B: club2,
            club2ColorB: club2Color),
        Container(
          margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
          height: 320,
          width: 295,
          decoration: BoxDecoration(
            color: const Color(0xFF0f2840),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Center(
          
            child: resultContainer(
                club1C: club1,
                club1ColorC: club1Color,
                club2C: club2,
                club2ColorC: club2Color,
                matchDateC: matchDate,
                compiC: compi,
                goal1C: goal1,
                goal2C: goal2,
                score1C: score1,
                score2C: score2),
          
        ),
      ],
    ),
  );
}

resultsBox({
  String? club1B,
  Color? club1ColorB,
  String? club2B,
  Color? club2ColorB,
}) {
  String homeClub = club1B ?? 'mancity';
  String awayClub = club2B ?? 'mancity';

  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
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
    child: Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
                color: club1ColorB ?? const Color(0xFF6CADDF),
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage('images/$homeClub.png'),
                )),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
                color: club2ColorB ?? const Color(0xFF6CADDF),
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(10),
                ),
                image:
                    DecorationImage(image: AssetImage('images/$awayClub.png'))),
          ),
        ),
      ],
    ),
  );
}

resultContainer({
  String? club1C,
  Color? club1ColorC,
  String? club2C,
  Color? club2ColorC,
  required String matchDateC,
  required String compiC,
  required String score1C,
  required String score2C,
  required String goal1C,
  required String goal2C,
}) {
  String homeClub = club1C ?? 'mancity';
  String awayClub = club2C ?? 'mancity';
  return Container(
    width: 295,
    decoration: BoxDecoration(
      color: const Color(0xFF0f2840),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        SizedBox(
          height: 70,
          width: 240,
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('images/$compiC.png'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      compiC.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    matchDateC,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.white54,
        ),
        Container(
          width: 240,
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('images/$homeClub.png'))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          homeClub.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(goal1C,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(score1C,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('images/$awayClub.png'))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          awayClub.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(goal2C,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  Text(score2C,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

SizedBox boxesFixturesDetails({double? x, double? hei, Axis? axisDirection}) {
  return SizedBox(
    height: hei ?? 200,
    child: PageView(
      pageSnapping: false,
      scrollDirection: axisDirection ?? Axis.horizontal,
      controller: PageController(initialPage: 1, viewportFraction: x ?? 0.6),
      children: [
        //to show match
        
        fixturesDetails(
            time: '17:30',
            matchDate: 'Sat 12 Jan',
            compi: 'pl',
            club1: 'southampton',
            club1Color: sou),
        fixturesDetails(
            time: '15:00',
            matchDate: 'Sat 05 Feb',
            compi: 'facup',
            club2: 'fulham',
            club2Color: ful),
        fixturesDetails(
            time: '19:45',
            matchDate: 'Wed 09 Feb',
            compi: 'pl',
            club2: 'brentford',
            club2Color: bre),
        fixturesDetails(
            time: '17:30',
            matchDate: 'Sat 12 Feb',
            compi: 'pl',
            club1: 'norwich',
            club1Color: nor),
        fixturesDetails(
            time: '20:00',
            matchDate: 'Tue 15 feb',
            compi: 'ucl',
            club1: 'sporting',
            club1Color: spo),
      ],
    ),
  );
}

Container fixturesDetails({
  String? club1,
  Color? club1Color,
  String? club2,
  Color? club2Color,
  required String matchDate,
  required String compi,
  required String time,
}) {
  return Container(
    padding: const EdgeInsets.only(top: 20),
    child: Stack(
      children: [
        fixtureBox(
            club1B: club1,
            club1ColorB: club1Color,
            club2B: club2,
            club2ColorB: club2Color),
            Center(
              child:
        fixtureContainer(
            timeC: time,
            matchDateC: matchDate,
            compiC: compi,
            club1B: club1,
            club1ColorB: club1Color,
            club2B: club2,
            club2ColorB: club2Color),
            ),
      ],
            
    ),
  );
}

fixtureBox({
  String? club1B,
  Color? club1ColorB,
  String? club2B,
  Color? club2ColorB,
}) {
  String homeClub = club1B ?? 'mancity';
  String awayClub = club2B ?? 'mancity';

  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
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
    child: Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
                color: club1ColorB ?? const Color(0xFF6CADDF),
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(10),
                ),
                image:
                    DecorationImage(image: AssetImage('images/$homeClub.png'))),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
                color: club2ColorB ?? const Color(0xFF6CADDF),
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(10),
                ),
                image:
                    DecorationImage(image: AssetImage('images/$awayClub.png'))),
          ),
        ),
      ],
    ),
  );
}

fixtureContainer({
  String? club1B,
  Color? club1ColorB,
  String? club2B,
  Color? club2ColorB,
  required String matchDateC,
  required String compiC,
  required String timeC,
}) {
  String homeClub = club1B ?? 'mancity';
  String awayClub = club2B ?? 'mancity';

  return Container(
    height: 250,
    width: 295,
    decoration: const BoxDecoration(
      color: Color(0xFF0f2840),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      children: [
        SizedBox(
          height: 70,
          width: 240,
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('images/$compiC.png'))),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      compiC.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    matchDateC,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.white54,
        ),
        Container(
          width: 240,
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('images/$homeClub.png'))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        homeClub.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                'VS',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage('images/$awayClub.png'))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        awayClub.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Time(GMT) :$timeC',
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ],
    ),
  );
}
