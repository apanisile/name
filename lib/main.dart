import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Name"),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  String textString = "This is where your text displays";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textString,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: (text) {
                change(text);
              },
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Powered by: ",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 36,
                        child: Image.asset('images/zuri/i4g.png')),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 36, child: Image.asset('images/hng.jpg')),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 36, child: Image.asset('images/i4g.jpg')),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 36, child: Image.asset('images/zuri.jpg')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "https://hng.png.tech",
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "https://ingressive.org",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void change(String text) {
    setState(() {
      textString = text;
    });
  }
}
