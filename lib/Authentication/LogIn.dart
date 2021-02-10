import 'package:chowcub/Authentication/SignInPage.dart';
import 'package:chowcub/Pages/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LogInpage extends StatefulWidget {
  LogInpage({Key key}) : super(key: key);

  @override
  _LogInpageState createState() => _LogInpageState();
}

class _LogInpageState extends State<LogInpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 200,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Image.asset('assets/images/logoIn.png')),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Username...',
                        hintStyle: TextStyle(color: Colors.red),
                        icon: Icon(
                          Icons.search,
                          color: Colors.red,
                        )),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Email ... ',
                        hintStyle: TextStyle(color: Colors.red),
                        icon: Icon(
                          Icons.search,
                          color: Colors.red,
                        )),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Choose a password',
                        hintStyle: TextStyle(color: Colors.red),
                        icon: Icon(
                          Icons.search,
                          color: Colors.red,
                        )),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.red),
                        icon: Icon(
                          Icons.search,
                          color: Colors.red,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInpage()));
                      },
                      child: Text('Log In'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'SIGN IN OPTIONS',
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: InkWell(
                            onTap: () {
                              //
                            },
                            child: Image.asset('assets/images/google.png'),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: InkWell(
                            onTap: () {
                              //
                            },
                            child: Image.asset('assets/images/facebook.png'),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                          child: InkWell(
                            onTap: () {
                              //
                            },
                            child: Image.asset('assets/images/apple.png'),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        CircleAvatar(
                          maxRadius: 32,
                          backgroundColor: Colors.white,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()));
                            },
                            child: Icon(
                              Icons.mail,
                              color: Colors.red,
                              size: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              alignment: Alignment.center,
              child: RaisedButton(
                  color: Colors.greenAccent[200],
                  onPressed: () async {
                    signInAnonymously();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    print("User Logged In");
                  },
                  child: Text("Sign In Anonmosly")),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('Already have an account'),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                      },
                      child: Text('Log In'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signInAnonymously() {
    _auth.signInAnonymously().then((result) {
      setState(() {
        // ignore: unused_local_variable
        final User user = result.user;
      });
    });
  }
}
