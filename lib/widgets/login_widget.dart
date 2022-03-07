import 'package:flutter/material.dart';

import 'donthaveaccount.dart';
import 'forgot_password.dart';
import 'passwordfield.dart';
import 'rounded_button.dart';
import 'sizedbox.dart';
import 'textinputfield.dart';

//use flutter_fade_anim

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Flutter Drawer Demos';
  final listviewTitle = 'List view Page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      // initialRoute: '/home',
      // routes: {
      //   // '/splash': (context) => SwipPage(),
      //   '/home': (context) => MyHomePage(title: appTitle),
      //   '/listview': (context) => ListViewPage(title: listviewTitle),
      //   //'/contactus': (context) => Contactus(),

      //   //'/aboutus': (context) => LoginScreen(),
      // },
    );
  }
}

final List<String> _officers = [
  'Select Officer',
  'Assistant Commissioner',
  'Deputic commissioner',
  'Inspector',
  'Sub Inspector',
  'Head Constable',
];
//Donot use as variable

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  // const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<FormState>();
  final bool _isObscure = true;

  void validateandsave() {
    final form = _formkey.currentState;
    if (form!.validate()) {
      print('form is valid');
      var username = _usernamecontroller.text;
      var password = _passwordcontroller.text;

      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => SuccessPage()));
    } else {
      print('form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: Scaffold(
          key: _scaffoldkey,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxWidget(heightvalue: 15),
                SizedBoxWidget(heightvalue: 15),
                TextInputField(
                  controller: _usernamecontroller,
                  labelText: "Username",
                  hintText: "Enter Username",
                ),
                SizedBoxWidget(heightvalue: 15),
                PasswordField(
                  controller: _passwordcontroller,
                  labelText: "Password",
                  hintText: "Your Password",
                ),
                SizedBoxWidget(heightvalue: 15),
                RoundedButtonField(
                  text: "SIGNUP",
                  press: () {
                    validateandsave();
                  },
                ),
                SizedBoxWidget(heightvalue: 10),
                ForgotPassword(
                  text: "Forgot Password?",
                  press: () {
                    validateandsave();
                  },
                ),
                SizedBoxWidget(heightvalue: 10),
                // Dropdownlist(chosenvalue: _posting, listvalue: _officers),
                SizedBoxWidget(heightvalue: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/550x/ef/60/5d/ef605d6f4ffe040e0d0aed48be1e41e9.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBoxWidget(heightvalue: 15),
                DontHaveAccount(
                  text: "Don't have an Account",
                  text2: "Create Account",
                  press: () {
                    validateandsave();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
