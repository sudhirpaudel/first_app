// ignore_for_file: unnecessary_import, unused_import
import 'package:ionicons/ionicons.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mainprojectone/ui/details.dart';
import 'body.dart';
import 'package:mainprojectone/ui/colors.dart';

class ViewPlayers extends StatelessWidget {
  const ViewPlayers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6CADDF),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF0f2840)),
        backgroundColor: const Color(0xFF6CADDF),
        shadowColor: Colors.black38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: const Text(
          'PLAYERS',
          style: TextStyle(fontSize: 20, color: Color(0xFF0f2840)),
        ),
        centerTitle: true,
      ),
      body: boxesPlayersDetail(hei: 700, x: 0.4, axisDirection: Axis.vertical),
    );
  }
}

class ViewResults extends StatelessWidget {
  const ViewResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6CADDF),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF0f2840)),
        backgroundColor: const Color(0xFF6CADDF),
        shadowColor: Colors.black38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: const Text(
          'RESULTS',
          style: TextStyle(fontSize: 20, color: Color(0xFF0f2840)),
        ),
        centerTitle: true,
      ),
      body: boxesResultsDetails(hei: 700, x: 0.4, axisDirection: Axis.vertical),
    );
  }
}

class ViewFixtures extends StatelessWidget {
  const ViewFixtures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6CADDF),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF0f2840)),
        backgroundColor: const Color(0xFF6CADDF),
        shadowColor: Colors.black38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: const Text(
          'FIXTURES',
          style: TextStyle(fontSize: 20, color: Color(0xFF0f2840)),
        ),
        centerTitle: true,
      ),
      body:
          boxesFixturesDetails(hei: 700, x: 0.4, axisDirection: Axis.vertical),
    );
  }
}

class ViewStaff extends StatelessWidget {
  const ViewStaff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6CADDF),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF0f2840)),
        backgroundColor: const Color(0xFF6CADDF),
        shadowColor: Colors.black38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: const Text(
          'STAFF',
          style: TextStyle(fontSize: 20, color: Color(0xFF0f2840)),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade300,
                    image: const DecorationImage(
                      image: AssetImage('images/chairman.jpg'),
                    ),
                  ),
                ),
                const Text(
                  'H.E. Khaldoon Al Mubarak ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Chairman ',
                  style: TextStyle(fontSize: 18, color: Colors.green.shade600),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade300,
                    image: const DecorationImage(
                      image: AssetImage('images/chief.jpg'),
                    ),
                  ),
                ),
                const Text(
                  'Ferran Soriano',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Chief Executive Officer ',
                  style: TextStyle(fontSize: 18, color: Colors.green.shade600),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade300,
                    image: const DecorationImage(
                      image: AssetImage('images/dof.jpg'),
                    ),
                  ),
                ),
                const Text(
                  'Txiki Begiristain',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  ' Director of Football',
                  style: TextStyle(fontSize: 18, color: Colors.green.shade600),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade300,
                    image: const DecorationImage(
                      image: AssetImage('images/manager.jpg'),
                    ),
                  ),
                ),
                const Text(
                  'Pep Guardiola',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Manager',
                  style: TextStyle(fontSize: 18, color: Colors.green.shade600),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 180,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade300,
                    image: const DecorationImage(
                      image: AssetImage('images/am.jpg'),
                    ),
                  ),
                ),
                const Text(
                  'Juanma Lillo',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Assistant Manager',
                  style: TextStyle(fontSize: 18, color: Colors.green.shade600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ViewNews extends StatelessWidget {
  const ViewNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6CADDF),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              'NEWS',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54),
            ),
          ),
          newsDetail(newsText: 'Sterling wins EA SPORTS Player of the month',playerNews:'sterlingNews'),
          newsDetail(newsText: 'Pep wins EA SPORTS Manager of the month',playerNews:'pepNews'),
        ],
      ),
    );
  }

 

  newsDetail({required String newsText,required String playerNews}) {
    return Stack( children: [
      Container(
        height: 300,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: cityTwo,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(image: AssetImage('images/$playerNews.jpg')),
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
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20,240,20,10),
        
         decoration:  BoxDecoration(
          color: Colors.blue.withOpacity(0.6),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding:const EdgeInsets.all(10),
           child:Text(newsText,style:TextStyle(fontSize:20,color:cityTwo)),
         
       ), 
      ),
    ],
    );
  }
}

class ViewAboutUs extends StatelessWidget {
  const ViewAboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF0f2840)),
        backgroundColor: const Color(0xFF6CADDF),
        shadowColor: Colors.black38,
        //shape: const RoundedRectangleBorder(
        //borderRadius: BorderRadius.vertical(
        // bottom: Radius.circular(15),
        // ),
        // ),
        title: const Text(
          'ABOUT US',
          style: TextStyle(fontSize: 20, color: Color(0xFF0f2840)),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          aboutUs(),
        ],
      ),
    );
  }
}

aboutUs() {
  return Stack(
    children: [
      Container(
        //for logo
        height: 250,
        decoration: const BoxDecoration(
          color: Colors.green,
          image: DecorationImage(
            image: AssetImage('images/etihad.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        height: 1400,
        margin: const EdgeInsets.only(top: 170),
        decoration:  BoxDecoration(
          color: city,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(70)),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(20, 120, 20, 20),
          child: Text(
              """ Manchester City Football Club is an English football club based in Manchester that competes in the Premier League, the top flight of English football. Founded in 1880 as St. Mark's (West Gorton), it became Ardwick Association Football Club in 1887 and Manchester City in 1894. The club's home ground is the Etihad Stadium in east Manchester, to which it moved in 2003, having played at Maine Road since 1923. The club adopted their sky blue home shirts in 1894 in the first season of the club's current iteration, that have been used ever since.[4] They are currently ranked 6th in the all-time English top flight table since its creation in 1888,[5] thus making it one of the country's most successful football clubs.

Manchester City entered the Football League in 1892, and won their first major honour with the FA Cup in 1904. The club had its first major period of success in the late 1960s, winning the League, European Cup Winners Cup, FA Cup and League Cup under the management of Joe Mercer and Malcolm Allison. After losing the 1981 FA Cup Final, the club went through a period of decline, culminating in relegation to the third tier of English football for the only time in its history in 1998. They since regained promotion to the top tier in 2001–02 and have remained a fixture in the Premier League since 2002–03.

The club received considerable financial investment in both playing staff and club facilities following the club's takeover by Sheikh Mansour bin Zayed Al Nahyan through the Abu Dhabi United Group in 2008.[6] This started a new era of achievement, with the club winning the FA Cup in 2011 and the Premier League in 2012, both their first since the 1960s, followed by another League in 2014. Under the management of Pep Guardiola City won the Premier League in 2018, becoming the only Premier League team to attain 100 points in a single season. In 2019, they won four trophies, completing an unprecedented sweep of all domestic trophies in England and becoming the first English men's team to win the domestic treble.[7] In addition to winning the third Premier League title in the Guardiola era, City reached their first European Cup final in 2021, where they lost to Chelsea. """,
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
      Center(
        child: Container(
          //for info of club
          margin: const EdgeInsets.only(top: 55),
          height: 205,
          width: 340,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              )
            ],
            color: const Color(0xFF6CADDF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'MANCHESTER',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Text(
                'CITY F.C',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.facebook_outlined),
                    onPressed: null,
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.facebook),
                    onPressed: null,
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.facebook_sharp),
                    onPressed: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        //for logo
        height: 100,
        margin: const EdgeInsets.only(
          top: 10,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
          image: DecorationImage(
            image: AssetImage('images/logo.jpg'),
          ),
        ),
      ),
    ],
  );
}
