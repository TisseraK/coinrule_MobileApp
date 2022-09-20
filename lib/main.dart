import 'package:coinrule/home.dart';
import 'package:coinrule/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Schyler'),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MyHomePage(),
        '/login': (BuildContext context) => LogIn(),
        '/home_': (BuildContext context) => Home(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
            child: Stack(
          children: [
            Container(
              height: _height,
              width: _width,
              decoration: BoxDecoration(color: Colors.blue.shade900),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'About',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Pricing',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Learn',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Invest',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)),
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: _height * 0.035),
                        ),
                      ),
                    )
                  ]),
            ),
          ],
        )),
        body: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple,
              Colors.blueAccent,
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(25),
                height: _height * 0.1,
                width: _width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'COINRULE',
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.025),
                    ),
                    IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.abc,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Container(
                //
                width: _width,
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Automated',
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.05),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Crypto',
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.05),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Trading Bots',
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.05),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Made Easy',
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.05),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      'Coinrule empowers cryptocurrency traders to compete with professional algorithmic traders and hedge funds. No coding required.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.02),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.yellow,
                                Colors.orange,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(60)),
                        child: Text(
                          'Start Free',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: _height * 0.02,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ]),
              ),
              Container(
                height: _height * 0.1,
                width: _width,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: _height * 0.1,
                      width: _width * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://coinrule.com/pic/tc.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      height: _height * 0.1,
                      width: _width * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://coinrule.com/pic/forbes.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      height: _height * 0.1,
                      width: _width * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://coinrule.com/pic/yc.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      height: _height * 0.1,
                      width: _width * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://coinrule.com/pic/bi.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
