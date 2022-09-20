import 'package:flutter/material.dart';

bool _passwordVisible = false;

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                        onPressed: () {},
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
          padding: EdgeInsets.only(bottom: 50),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(25),
                height: _height * 0.1,
                width: _width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'COINRULE',
                      style: TextStyle(
                          color: Colors.white, fontSize: _height * 0.025),
                    ),
                  ],
                ),
              ),
              Container(
                height: _height * 0.5,
                width: _width,
                padding: EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Account Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: _height * 0.04),
                      ),
                      Container(
                        height: _height * 0.065,
                        width: _width * 0.95,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              )),
                        ),
                      ),
                      Container(
                        height: _height * 0.065,
                        width: _width * 0.95,
                        child: TextFormField(
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  // Update the state i.e. toogle the state of passwordVisible variable
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              labelText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/home_');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(60)),
                          width: _width * 0.75,
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Log In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontSize: _height * 0.035),
                          ),
                        ),
                      ),
                      Text(
                        'or log in with',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: _height * 0.02),
                      ),
                      Container(
                        width: _width * 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(60)),
                                width: _width * 0.30,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Google',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: _height * 0.02),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(60)),
                                width: _width * 0.30,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Facebook',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: _height * 0.02),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Forgort password ?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: _height * 0.02),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Create account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: _height * 0.02),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Contact us',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: _height * 0.02),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Terms',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: _height * 0.02),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Policy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: _height * 0.02),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
