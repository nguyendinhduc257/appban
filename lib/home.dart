import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
                onTap: () {},
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
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      _key.currentState!.openDrawer();
                    },
                    child: Container(
                      child: Image(image: AssetImage('lib/assets/Group.png')),
                    ),
                  ),
                  SizedBox(
                    width: 240.0,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      child: Image(image: AssetImage('lib/assets/Vector.png')),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 9.0,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      child: Image(image: AssetImage('lib/assets/map.png')),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      child: Image(image: AssetImage('lib/assets/chu.png')),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      child: Image(image: AssetImage('lib/assets/muiten.png')),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                  child: Text('Choose your preferred meal')),
              // Icon ngôi nhà, trái tim, ....
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 4, 0, 0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: (Container(
                        child: Stack(children: <Widget>[
                          Container(
                            child: Image(
                                image: AssetImage('lib/assets/hinhvuong.png')),
                          ),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                            child: Image(
                                image: AssetImage('lib/assets/house.png')),
                          ))
                        ]),
                      )),
                    ),
                    SizedBox(width: 22),
                    TextButton(
                      onPressed: () {},
                      child: (Container(
                        child: Stack(children: <Widget>[
                          Container(
                            child: Image(
                                image: AssetImage('lib/assets/vuong2.png')),
                          ),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 11, 0, 0),
                            child: Image(
                                image: AssetImage('lib/assets/heart.png')),
                          ))
                        ]),
                      )),
                    ),
                    SizedBox(width: 22),
                    TextButton(
                      onPressed: () {},
                      child: (Container(
                        child: Stack(children: <Widget>[
                          Container(
                            child: Image(
                                image: AssetImage('lib/assets/vuong2.png')),
                          ),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 11, 0, 0),
                            child: Image(
                                image: AssetImage('lib/assets/vector2.png')),
                          ))
                        ]),
                      )),
                    ),
                    SizedBox(width: 22),
                    TextButton(
                      onPressed: () {},
                      child: (Container(
                        child: Stack(children: <Widget>[
                          Container(
                            child: Image(
                                image: AssetImage('lib/assets/vuong2.png')),
                          ),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 11, 0, 0),
                            child:
                                Image(image: AssetImage('lib/assets/xe.png')),
                          )),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 11, 0, 0),
                            child:
                                Image(image: AssetImage('lib/assets/cham.png')),
                          ))
                        ]),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              // Màn hình món ăn
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: (Container(
                        child: Stack(children: <Widget>[
                          Container(
                            height: 230,
                            width: 165,
                            child:
                                Image(image: AssetImage('lib/assets/mon1.png')),
                          ),
                        ]),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 21, 0, 0),
                      child: TextButton(
                        onPressed: () {},
                        child: (Container(
                          height: 230,
                          width: 165,
                          child: Stack(children: <Widget>[
                            Container(
                              child: Image(
                                  image: AssetImage('lib/assets/mon2.png')),
                            ),
                          ]),
                        )),
                      ),
                    ),
                  ],
                ),
              ),

              // màn hình ăn 2

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: (Container(
                        child: Stack(children: <Widget>[
                          Container(
                            height: 230,
                            width: 165,
                            child:
                                Image(image: AssetImage('lib/assets/mon4.png')),
                          ),
                        ]),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
                      child: TextButton(
                        onPressed: () {},
                        child: (Container(
                          height: 230,
                          width: 165,
                          child: Stack(children: <Widget>[
                            Container(
                              child: Image(
                                  image: AssetImage('lib/assets/mon4.png')),
                            ),
                          ]),
                        )),
                      ),
                    ),
                  ],
                ),
              ),

              //button
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  child: (Container(
                    child: Stack(children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('lib/assets/button.png'),
                          width: 350,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
                        child: Container(
                          child:
                              Image(image: AssetImage('lib/assets/item.png')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(210, 16, 0, 0),
                        child: Container(
                          child:
                              Image(image: AssetImage('lib/assets/icon.png')),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(235, 20, 0, 0),
                        child: Container(
                          child:
                              Image(image: AssetImage('lib/assets/tien.png')),
                        ),
                      ),
                    ]),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
