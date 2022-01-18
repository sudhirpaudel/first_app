import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mainprojectone/ui/colors.dart';

class CreateAccountDrawer extends StatefulWidget {
  const CreateAccountDrawer({Key? key}) : super(key: key);

  @override
  _CreateAccountDrawerState createState() => _CreateAccountDrawerState();
}

class _CreateAccountDrawerState extends State<CreateAccountDrawer> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  final TextEditingController _emailText = TextEditingController();
  final TextEditingController _passwordText = TextEditingController();
  final TextEditingController _confirmPasswordText = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: 400,
          margin: const EdgeInsets.fromLTRB(60, 500, 0, 0),
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/ship.png'))),
        ),
        Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF6CADDF),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 60, 0, 40),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0f2840)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              color: Colors.transparent,
              child: Column(
                children: [
                  textFillOne(),
                  textFillTwo(),
                  textFillThree(),
                  textFillFour(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: createAccount(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Already have an account?Log In',
                      style: TextStyle(color: Color(0xFF0f2840), fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column textFillOne() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            ' E-mail',
          ),
        ),
        TextField(
          controller: _emailText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Enter Your Email',
            hintStyle: TextStyle(color: Colors.grey.shade400),
          ),
        ),
      ],
    );
  }

  Column textFillTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            ' Phone',
          ),
        ),
        TextField(
          controller: _phoneNumber,
          keyboardType: TextInputType.phone,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ], // Only numbers can be entered
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Enter Your phone number',
            hintStyle: TextStyle(color: Colors.grey.shade400),
          ),
        ),
      ],
    );
  }

  Column textFillThree() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            ' Password',
          ),
        ),
        TextField(
          controller: _passwordText,
          obscureText: _obscureText1,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () => setState(() {
                _obscureText1 = !_obscureText1;
              }),
              icon: const Icon(
                Icons.remove_red_eye_outlined,
              ),
            ),
            // Based on passwordVisible state choose the icon
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Enter a password',
            hintStyle: TextStyle(color: Colors.grey.shade400),
          ),
        ),
      ],
    );
  }

  Column textFillFour() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            ' Confirm password',
          ),
        ),
        TextField(
          controller: _confirmPasswordText,
          obscureText: _obscureText2,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () => setState(() {
                _obscureText2 = !_obscureText2;
              }),
              icon: const Icon(
                Icons.remove_red_eye_outlined,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Confirm password',
            hintStyle: TextStyle(color: Colors.grey.shade400),
          ),
        ),
      ],
    );
  }

  createAccount() {
    return Container(
      //margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      width: 300,
      height: 40,

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFF6CADDF),
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
      child: TextButton(
        onPressed: () {
          var _email = _emailText.text;
          var _phone = _phoneNumber.text;
          var _password = _passwordText.text;
          var _confirmPassword = _confirmPasswordText.text;

          debugPrint('Email:' + _email);
          debugPrint('Phone:' + _phone);
          debugPrint('Password:' + _password);
          debugPrint('ConfirmPassword:' + _confirmPassword);
        },
        child: const Text('Register',
            style: TextStyle(color: Color(0xFF0f2840), fontSize: 20)),
      ),
    );
  }
}

class LogInDrawer extends StatefulWidget {
  const LogInDrawer({Key? key}) : super(key: key);

  @override
  _LogInDrawerState createState() => _LogInDrawerState();
}

class _LogInDrawerState extends State<LogInDrawer> {
  bool _obscureText = true;
  final TextEditingController _emailLogIn = TextEditingController();
  final TextEditingController _passwordLogIn = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: 400,
          margin: const EdgeInsets.fromLTRB(60, 500, 0, 0),
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/ship.png'))),
        ),
        Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF6CADDF),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 60, 0, 40),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0f2840)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  emailFill(),
                  passfill(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: logIn(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Don't have an account?Create",
                      style: TextStyle(color: cityTwo, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  emailFill() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            ' E-mail',
          ),
        ),
        TextField(
          controller: _emailLogIn,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Enter Your Email',
            hintStyle: TextStyle(color: Colors.grey.shade400),
          ),
        ),
      ],
    );
  }

  passfill() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            ' Password',
          ),
        ),
        TextField(
          controller: _passwordLogIn,
          obscureText: _obscureText,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.remove_red_eye_outlined,
              ),
              onPressed: () => setState(() {
                _obscureText = !_obscureText;
              }),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Enter your password',
            hintStyle: TextStyle(color: Colors.grey.shade400),
          ),
        ),
      ],
    );
  }

  logIn() {
    return Container(
      //margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
      width: 200,
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFF6CADDF),
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
      child: TextButton(
        onPressed: () {
          var _emailLog = _emailLogIn.text;
          var _passwordLog = _passwordLogIn.text;
          debugPrint('Email:' + _emailLog);
          debugPrint('Password:' + _passwordLog);
        },
        child: const Text('LogIn',
            style: TextStyle(color: Color(0xFF0f2840), fontSize: 20)),
      ),
    );
  }
}
