import 'package:flutter/material.dart';

bool _passwordVisible = false;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blue.shade900,
            title: Row(
              children: [
                IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    icon: Icon(
                      Icons.draw_rounded,
                      color: Colors.white,
                    )),
                Padding(padding: EdgeInsets.only(left: _width * 0.3)),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Trader',
                    style: TextStyle(
                        color: Colors.white, fontSize: _height * 0.015),
                  ),
                ),
                Text(
                  'COINRULE',
                  style:
                      TextStyle(color: Colors.white, fontSize: _height * 0.025),
                ),
              ],
            )),
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
                          'Rules',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Exchanges',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Setting',
                          style: TextStyle(
                              color: Colors.white, fontSize: _height * 0.035),
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(60)),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Get Plan ',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: _height * 0.03),
                        ),
                      ),
                    )
                  ]),
            ),
          ],
        )),
        body: Container(
          padding: EdgeInsets.only(bottom: 50),
          height: _height,
          width: _width,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(10),
                height: _height * 0.1,
                width: _width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Rules Profit',
                            style: TextStyle(
                                color: Colors.grey, fontSize: _height * 0.02),
                          ),
                          Text(
                            '€ 0.52',
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: _height * 0.025),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Tot. Balance',
                            style: TextStyle(
                                color: Colors.grey, fontSize: _height * 0.02),
                          ),
                          Text(
                            '€ 43.68',
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: _height * 0.025),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: _height * 0.05,
                width: _width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: _width * 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.ac_unit,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.ac_unit,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(60)),
                              child: Text(
                                'Create Rule : +',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _height * 0.015),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: _height * 0.05,
                width: _width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 rule',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Active',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                height: _height * 0.07,
                width: _width * 0.95,
                decoration: BoxDecoration(
                    border: Border(
                        right:
                            BorderSide(width: 1, color: Colors.grey.shade200),
                        top: BorderSide(width: 1, color: Colors.grey.shade200),
                        bottom:
                            BorderSide(width: 1, color: Colors.grey.shade200),
                        left: BorderSide(width: 3, color: Colors.green))),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      'BUSD/BTC',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_left,
                      color: Colors.green,
                    ),
                    Padding(padding: EdgeInsets.all(25)),
                    Text(
                      '+2.38%',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.all(25)),
                    Text(
                      '€0.52',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
