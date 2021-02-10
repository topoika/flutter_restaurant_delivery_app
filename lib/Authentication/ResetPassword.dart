import 'package:chowcub/theme.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({Key key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo1.png',
                    height: 70,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Reset your Password',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      fontFamily: MyColors.primaryFont,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your new password and confirm',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: MyColors.primaryFont,
                    ),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                                    hintText: 'New password',
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
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                                    hintText: 'Confirm new password',
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
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: MyColors.primaryColor),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Done',
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
                ])));
  }
}
