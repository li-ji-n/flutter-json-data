import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class About extends StatelessWidget {
  final showData;
  About(this.showData);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xffF5F3F3),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.grey,
              iconSize: 35,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
          ),
          body: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50),
                child: Container(
                  margin: EdgeInsets.only(bottom: 100),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                showData['name'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                showData['bio'],
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 5,
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration:
                    ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: DecoratedBox(
                    decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              showData['picture'],
                            ))),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
