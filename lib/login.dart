import 'package:flutter/material.dart';
import 'home.dart';
import 'main.dart';
import 'item.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 14, 172, 170),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                      child: Image(
                        image: AssetImage('lib/assets/Ellipse.png'),
                        width: 300,
                        height: 200,
                      ),
                    ),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage('lib/assets/person.png'),
                      width: 350,
                      height: 250,
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Welcome Back',
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.black87),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30),
              buildUsername(),
              SizedBox(height: 15),
              buildPassword(),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => firstScreen())));
                    },
                    child: Text(
                      'Sign Up',
                      style: const TextStyle(color: Colors.white), //title
                      textAlign: TextAlign.end, //aligment
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //action
                    },
                    child: Text(
                      'Forgot Password ?',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0)), //title
                      textAlign: TextAlign.end, //aligment
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 255, 174, 174)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => ThirdScreen())));
                    },
                    child: const Text(
                      'Login',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: _isSecurePassword,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                suffixIcon: togglePassword(),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.w900)),
          ),
        )
      ],
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecurePassword = !_isSecurePassword;
        });
      },
      icon: _isSecurePassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Color.fromARGB(255, 14, 172, 170),
    );
  }
}

Widget buildUsername() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xff5ac18e),
              ),
              hintText: 'Username, Email',
              hintStyle: TextStyle(
                  color: Colors.black38, fontWeight: FontWeight.w900)),
        ),
      )
    ],
  );
}
