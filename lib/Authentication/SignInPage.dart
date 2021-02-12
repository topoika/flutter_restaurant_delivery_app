import 'package:chowcub/Authentication/ForgetPassword.dart';
import 'package:chowcub/Authentication/SignUpPage.dart';
import 'package:chowcub/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 4,
            ),
            Image.asset(
              'assets/images/logo1.png',
              height: 100,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CHOW',
                  style: TextStyle(
                      fontFamily: MyColors.primaryFont,
                      color: Colors.pink,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'CUB',
                  style: TextStyle(
                      fontFamily: MyColors.primaryFont,
                      color: Colors.orange,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'The best food for you!',
              style: TextStyle(
                color: Colors.black87,
                fontFamily: MyColors.primaryFont,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      cursorColor: Colors.black,
                      style: TextStyle(
                        fontFamily: MyColors.primaryFont,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          color: Colors.black45,
                          fontFamily: MyColors.primaryFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            cursorColor: Colors.black,
                            style: TextStyle(
                              fontFamily: MyColors.primaryFont,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.black45,
                                fontFamily: MyColors.primaryFont,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility_off_outlined),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      splashColor: MyColors.primaryColor,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPasswordPage()));
                      },
                      child: Text(
                        'Forgot password!',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: MyColors.primaryFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: MyColors.primaryColor),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontFamily: MyColors.primaryFont,
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: MyColors.primaryColor),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In with Google',
                        style: TextStyle(
                            fontFamily: MyColors.primaryFont,
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In with FaceBook',
                        style: TextStyle(
                            fontFamily: MyColors.primaryFont,
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You don't have an account?",
                      style: TextStyle(
                          fontFamily: MyColors.primaryFont,
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontFamily: MyColors.primaryFont,
                            color: MyColors.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
