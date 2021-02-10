import 'package:chowcub/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.backColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        //alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo1.png',
              height: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Create New Account',
              style: TextStyle(
                  fontFamily: MyColors.primaryFont,
                  fontSize: 28,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 30,
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
                        hintText: 'Full name',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontFamily: MyColors.primaryFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
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
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontFamily: MyColors.primaryFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
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
                          color: Colors.black54,
                          fontFamily: MyColors.primaryFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
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
                  SizedBox(
                    height: 18,
                  ),
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
                        hintText: 'Your location',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontFamily: MyColors.primaryFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
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
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontFamily: MyColors.primaryFont,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: MyColors.primaryColor,
                          checkColor: Colors.white,
                          value: timeDilation != 1.0,
                          onChanged: (bool value) {
                            setState(() {
                              timeDilation = value ? 10.0 : 1.0;
                            });
                          },
                        ),
                        Text(
                          'I agree with the ',
                          style: TextStyle(
                            fontFamily: MyColors.primaryFont,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Terms & Contitions ',
                            style: TextStyle(
                              color: MyColors.primaryColor,
                              fontFamily: MyColors.primaryFont,
                            ),
                          ),
                        ),
                        Text(
                          'of Chow Cub',
                          style: TextStyle(
                            fontFamily: MyColors.primaryFont,
                          ),
                        )
                      ],
                    ),
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
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: MyColors.primaryFont,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
