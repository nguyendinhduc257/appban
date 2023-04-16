import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _key,
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text('nguyendinhduc257@gmail.com'),
                accountName: Text('Nguyen Dinh Duc'),
                currentAccountPicture: CircleAvatar(
                    foregroundImage: AssetImage('lib/assets/me.jpg')),
              ),
              SizedBox(height: 70),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.recent_actors),
                title: Text('Addresses'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Location'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
              SizedBox(height: 80),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: ((context) => SecondScreen())));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      child: Image(image: AssetImage('lib/assets/tentrai.png')),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _key.currentState!.openDrawer();
                    },
                    child: Container(
                      child: Image(image: AssetImage('lib/assets/Group.png')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image(
                  image: AssetImage("lib/assets/monan.png"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beef Burger",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 52, 54, 55)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "About this product",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 28, 29, 30)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Crunchy beef burger",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 183, 184, 186)),
                            ),
                            Text(
                              "with onion and lettuce",
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 183, 184, 186)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: (Container(
                                    child: Stack(children: <Widget>[
                                      Container(
                                        child: Image(
                                            image: AssetImage(
                                                'lib/assets/vuong3.png')),
                                      ),
                                      Container(
                                          child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            18, 15, 0, 0),
                                        child: Image(
                                            image: AssetImage(
                                                'lib/assets/clock.png')),
                                      ))
                                    ]),
                                  )),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Time',
                                      style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(255, 3, 3, 3)),
                                    ),
                                    Text(
                                      '25 minutes',
                                      style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(
                                              255, 183, 184, 186)),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            child: Image(
                                image: AssetImage('lib/assets/frame.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
