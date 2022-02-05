import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:samblesmpay/partofsmpay.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Data> data = [];
  String? Status;
  String url = "https://run.mocky.io/v3/524418e3-88fe-416b-8c7d-809852b8ad35";
  Future? objfuture;
  Future<model_status> apiCall() async {
    model_status? objmodelstatus;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objmodelstatus = model_status.fromJson(data);
      print(response.body);
      setState(() {
        for (int i = 0; i < objmodelstatus!.data!.length; i++) {
          data.add(objmodelstatus.data![i]);
        }
      });
    }
    return objmodelstatus!;
  }

  @override
  void initState() {
    //TODO:Impliment initState
    super.initState();
    objfuture = apiCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: Column(
        children: [
          ListView.builder(
              itemCount: data.length,
              itemBuilder: (c, i) {
                return Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text(data[i].name!),
                      Text(data[i].onlinePaymentKey!),
                      Text(data[i].id.toString()),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
