import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Color colores = Colors.grey;
bool visibility = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:28.0),
                child: Center(
                  child: Material(
                      child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(color: colores, width: 4.0),
                      color: Colors.indigo[900],
                      shape: BoxShape.circle,
                    ),
                    child:
                        InkWell(
                          //This keeps the splash effect within the circle
                          borderRadius: BorderRadius.circular(
                              1000.0), //Something large to ensure a circle
                          onTap: () {
                            setState(() {
                              colores = Colors.green;
                                visibility = true;
                            });
                          },
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(
                              Icons.message,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                  )),
                ),
              ),

            ],
          ),
          Visibility(
              visible: visibility,
              child: Positioned(
                  top: 40,
                  left: 190,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(1000)
                    ),
                    child: Icon(Icons.check,color: Colors.redAccent,size: 33,),
                  )
              )),
        ],
      ),
    );
  }
}
