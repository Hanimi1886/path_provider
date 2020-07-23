import 'package:flutter/material.dart';
import 'package:learning_app/path_provider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  
 

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              // centerTitle: true,
              elevation: 8.0,
              title: Text(
                'Quick Downloader',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 170.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 240,
                    child: Card(
                        borderOnForeground: true,
                        elevation: 5.0,
                        shadowColor: Colors.grey[800],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        child: RaisedButton(
                          color: Colors.grey[50],
                          textColor: Colors.green[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          onPressed: () {
                            print('what app clicked');
                          },
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(left: 40.0)),
                                Text(
                                  "What's App",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Padding(padding: EdgeInsets.only(left: 10.0)),
                                Icon(Icons.watch),
                              ]),
                        )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 240,
                    child: Card(
                      borderOnForeground: true,
                      elevation: 5.0,
                      shadowColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      child: RaisedButton(
                        color: Colors.grey[50],
                        textColor: Colors.red[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        onPressed: () {
                          print('instagram clicked');
                        },
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 40.0)),
                              Text(
                                "Instagram",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10.0)),
                              Icon(Icons.insert_invitation),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 240,
                    child: Card(
                      borderOnForeground: true,
                      elevation: 5.0,
                      shadowColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      child: RaisedButton(
                        color: Colors.grey[50],
                        textColor: Colors.blue[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        onPressed: () {
                          print('facebook clicked');
                        },
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 40.0)),
                              Text(
                                "Facebook",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10.0)),
                              Icon(Icons.face),
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 240,
                    child: Card(
                      borderOnForeground: true,
                      elevation: 5.0,
                      shadowColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      child: RaisedButton(
                        color: Colors.grey[50],
                        textColor: Colors.red[600],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        onPressed: () {
                          print('youtube clicked');
                        },
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 40.0)),
                              Text(
                                "YouTube",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10.0)),
                              Icon(Icons.youtube_searched_for),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
