import 'package:flutter/material.dart';
import 'package:samblesmpay/loginpage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    _navigator();
    super.initState();
  }

  _navigator() async {
    await Future.delayed(
      Duration(milliseconds: 1500),
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => loginpage()));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      child: Center(
                          child: Image.asset(
                    "assets/images/smpay.jpg",
                    height: 200,
                    width: 200,
                  ))),
                ),SizedBox(height: 400,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(

                            child: Text("From")),
                        Text(
                          "workmate",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.5,
                              fontSize: 25,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
