import 'package:flutter/material.dart';
import 'package:start/login.dart';

class Successful extends StatefulWidget {
  const Successful({super.key});

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 14, 172, 170),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Center(child: Image(image: AssetImage('lib/assets/camcup.png'))),
            SizedBox(height: 60),
            Center(
                child: Text(
              'Registration',
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 52, 54, 55)),
            )),
            Center(
                child: Text(
              'Complete',
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 52, 54, 55)),
            )),
            SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 174, 174)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => SecondScreen())));
                  },
                  child: const Text('Register'),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
