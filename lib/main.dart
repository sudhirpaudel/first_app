import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mainprojectone/ui/view.dart';

// ignore: unused_import
import 'ui/body.dart';
import 'ui/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ManCity App',
      home: HomePage(
        variableIndexMain: 0,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.variableIndexMain}) : super(key: key);

  final int variableIndexMain;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int variableIndex = 0;
  var screens = [const BodyPage(), const ViewNews()];
  
  @override
  Widget build(BuildContext context) {
    widget.variableIndexMain;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF0f2840)),
        elevation: 0,
        backgroundColor: const Color(0xFF6CADDF),
        shadowColor: Colors.black38,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: const Text(
          'MANCHESTER CITY',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF0f2840),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.login_outlined,
              color: Color(0xFF0f2840),
            ),
            onPressed: () => showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => const AccountDrawer()),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF6CADDF),
      body: screens[variableIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: variableIndex,
        backgroundColor: const Color(0xFF6CADDF),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color(0xFF0f2840),
              ),
              label: 'HOME'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note_alt_outlined,
              color: Color(0xFF0f2840),
            ),
            label: 'NEWS',
          ),
        ],
        onTap: (int index) => setState(() {
          variableIndex = index;
        }),
      ),
      drawer: const BodyDrawer(),
    );
  }
}
