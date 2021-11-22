import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'MESCE'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title = 'Demo'});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(widget.title),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                ],
              )),
        ));
  }

  Card buildCard() {
    var ran = Random();
    var heading = 'MES COLLEGE OF ENGINEERING';
    var subheading =
        'KUTTIPPURAM, MALAPPURAM, KERALA - INDIA';

     Card(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mesce1.jpg"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
    var supportingText =
        'First Private Self-Financing College in the State of Kerala(since 1994)';
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: const Icon(Icons.favorite_outline),
            ),
            
            Container(
              height: 200.0,
              child: Ink.image(
                image: const AssetImage("assets/mesce1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(supportingText),
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('CONTACT US'),
                  onPressed: () {/* ... */},
                ),
                TextButton(
                  child: const Text('LEARN MORE'),
                  onPressed: () {/* ... */},
                

                )

              ],
            )
          ],
        ));
  }
}
  Widget buildLoginButtonWidget(context) {
    return Container(
        margin: EdgeInsets.only(top: 40, left: 16, right: 16),
        width: MediaQuery.of(context).size.width - 32,


        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RawMaterialButton(
              onPressed: () { },
              fillColor: Colors.pink,
              splashColor: Colors.purple,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "INSHOT IMAGES",
                      maxLines: 1,
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ],
                ),
              ),

              shape: const UnderlineInputBorder(),
            ),
            RawMaterialButton (
              onPressed: () { },
              fillColor: Colors.green,
              splashColor: Colors.greenAccent,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.face,
                      color: Colors.amber,
                      size: 32,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "DOWNLOAD",
                      maxLines: 1,
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
              ),
            ),
          ],
        ));
  }
