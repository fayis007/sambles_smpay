import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:samblesmpay/homepage.dart';
import 'package:samblesmpay/partofsmpay.dart';


class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {



  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _list = [
    'Panchayath_1',
    'Panchayath_2',
    'Panchayath_3',
    'Panchayath_4',
  ];
  final Formkey = GlobalKey<FormState>();
  String name = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AppBar(
              title: Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Form(
              key: Formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                    //  color: Colors.red,
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.group),
                              hintText: "Consumer No"),
                          validator: (value) {
                            if (value!.isEmpty ) {
                              return "Please Enter Consumer No";
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty || value.length < 8) {
                              return "Please Enter 8 characters";
                            } else {
                              return null;
                            }
                          },
                          obscureText: true,
                          controller: _passwordController,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(Icons.lock_outline),
                              hintText: "Password"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField(
                          hint: Text("Select Panchayath"),
                          onChanged: (value) {
                            print(value);
                          },
                          items: _list.map((e) {
                            return DropdownMenuItem(value: e, child: Text(e));
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  FlatButton(
                      height: 50,
                      // minWidth: 40,
                      shape: StadiumBorder(),
                      color: Colors.blue,
                      onPressed: () {
                   //  Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                        checklogin(context);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void checklogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
    } else {
      final _errorMessage = 'username doesnot match';
      //snackbar
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          content: Text(_errorMessage)));
    }}}