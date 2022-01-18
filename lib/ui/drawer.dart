// ignore_for_file: avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:mainprojectone/ui/body.dart';
import 'package:mainprojectone/ui/colors.dart';
import 'package:mainprojectone/ui/view.dart';
import '../main.dart';
import 'account.dart';

class BodyDrawer extends StatelessWidget {
  const BodyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
        
      ),
      elevation: 40,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
              color: city,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(
                    1.0,
                    1.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    margin: const EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('images/mancity.png'),
                      ),
                      boxShadow: [
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
                   Padding(
                    padding: const EdgeInsets.fromLTRB(0,5,0, 15),
                    child: Text(
                      'MANCHESTER CITY',
                      style: TextStyle(
                        fontSize: 22,
                        color: cityTwo,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: TextButton.icon(
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(
                            variableIndexMain: 0,
                          ),
                        ),
                      );
                    },
                    icon:  Icon(Icons.home_outlined,color: cityTwo,),
                    label: const Text('Home',
                        style: TextStyle(fontSize: 22, color: Colors.black54)),
                  ),
                ),
                Container(
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ViewStaff(),
                        ),
                      );
                    },
                    icon:  Icon(Icons.person_outline,color: cityTwo,),
                    label: const Text(' Staff',
                        style: TextStyle(fontSize: 22, color: Colors.black54)),
                  ),
                ),
                
                Container(
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ViewAboutUs(),
                        ),
                      );
                    },
                    icon:  Icon(Icons.info_outlined,color: cityTwo,),
                    label: const Text('About us',
                        style: TextStyle(fontSize: 22, color: Colors.black54)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccountDrawer extends StatelessWidget {
  const AccountDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xFF6CADDF),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: TextButton(
              onPressed: () => showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const CreateAccountDrawer()),
              child: const Text('Create Account',
                  style: TextStyle(color: Colors.white70, fontSize: 30)),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              boxShadow: [
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
            ),
            child: TextButton(
              onPressed: () => showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const LogInDrawer()),
              child: const Text('Log In',
                  style: TextStyle(color: Color(0xFF6CADDF), fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
