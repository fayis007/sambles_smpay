import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'package:samblesmpay/partofsmpay.dart';

import 'home/home_page.dart';


class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var panjayath ;

  List<Data> data2 = [];
  String? Status;
  String url = "https://smreader.net/app/Branches.php";
  Future? objfuture;
  Future<model_status> apiCall() async {
    model_status? objmodelstatus;
    Future<model_status>logins(String email,String psw )async{
    var response = await http.post(Uri.encodeFull("https://smreader.net/app/login-App.php"),
        body: {
      "username":email,
      "password":psw,
    });
    if (response.statusCode == 200) {
      try {
        var data = json.decode(response.body);
        objmodelstatus = model_status.fromJson(data);
        print(response.body);
        setState(() {
          for (int i = 0; i < objmodelstatus!.data!.length; i++) {
            data2.add(objmodelstatus.data![i]);
          }
        });
      } catch (e) {
        print(e);
      }
    }
    return objmodelstatus!;
  }

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  dynamic _list = [];
  final Formkey = GlobalKey<FormState>();
  String name = '';

  @override
  void initState() {
    objfuture = apiCall();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: objfuture,
            builder: (context,snap){
            if(snap.hasData){
              return ListView(
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
                                  if (value!.isEmpty) {
                                    return "Please specify username and password";
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
                                  if (value!.isEmpty) {
                                    return "Please specify username and password";
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
                                onTap: (){


                                },
                                hint: Text("Select Panchayath"),
                                onChanged: (value) {
                                  print(value);
                                },
                                items: data2.map((e) {
                                  return DropdownMenuItem(value: e, child: Text(e.name!));
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
                              if (Formkey.currentState!.validate()) {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                              }
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
              );
            }else{
              return Center(child: Text("Error"),);
            }
            })
      ),
    );
  }
}