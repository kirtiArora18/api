import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // const MyApp({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  getApi() async
  {
    var url= Uri.parse("/api/ticket/get/partnerTickets");
   Response response= await get(url);
   print(response);
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Getting Api"),
            TextButton(onPressed: (){
              getApi();
            }, child: Text("working on it"))
          ],
        ),
      ),

    );
  }
}

