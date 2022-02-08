import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ClipRRect(
                child: Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  //  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffa05de8), Colors.blueAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      //  color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlatButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 40,
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                            margin:
                                EdgeInsets.only(left: 30, right: 10, top: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  width: 3,
                                  color: Colors.cyanAccent,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "MOOSA POONDOLI S/O SAIDALI\nPOONDOLI (1-25)",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                // SizedBox(width: 50,),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.add_alert_sharp,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Center(child: Text("194",style: TextStyle(color: Colors.white),)),
                            margin:
                                EdgeInsets.only(top: 10, left: 25, right: 0),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(100),
                            ),

                          ),
                          Container(
                            child: Center(child: Text("130/-",style: TextStyle(color: Colors.white),)),
                            margin:
                                EdgeInsets.only(top: 10, left: 25, right: 10),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Container(
                            child: Center(child: Text("0/-",style: TextStyle(color: Colors.white),)),
                            margin:
                                EdgeInsets.only(top: 10, left: 25, right: 20),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin:
                                  EdgeInsets.only(top: 0, left: 35, right: 10),
                              child: Text(
                                "Last Month\n  Reading",
                                style: TextStyle(color: Colors.white),
                              )),
                          Container(
                              margin:
                                  EdgeInsets.only(top: 0, left: 0, right: 30),
                              child: Text(
                                "Last Month\nBill Amount",
                                style: TextStyle(color: Colors.white),
                              )),
                          Container(
                              margin:
                                  EdgeInsets.only(top: 0, left: 0, right: 45),
                              child: Text(
                                "Current\nBalance",
                                style: TextStyle(color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 340,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightBlue, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.padding,
                            color: Colors.lightBlue,
                            size: 60,
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightBlue, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.calculate_outlined,
                            color: Colors.lightBlue,
                            size: 60,
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightBlue, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.payment,
                            color: Colors.lightBlue,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("  Reading \nStatement"),
                          Text("   Billing\nStatement"),
                          Text("PAY Bill"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightBlue, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.menu,
                            color: Colors.lightBlue,
                            size: 60,
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightBlue, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.announcement,
                            color: Colors.lightBlue,
                            size: 60,
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.lightBlue, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Icon(
                            Icons.contact_phone_outlined,
                            color: Colors.lightBlue,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Complaints"),
                          Text("Announcement"),
                          Text("Contact"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffa05de8), Colors.blueAccent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "'SAVE WATER,",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "AND IT WILL SAVER YOU '",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
