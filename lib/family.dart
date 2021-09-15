import 'package:flutter/material.dart';
import 'package:r3lax_stable/home.dart';

class Family extends StatefulWidget {
  @override
  _FamilyState createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              }),
                        ),
                        top: MediaQuery.of(context).size.height / 100,
                        right: MediaQuery.of(context).size.width * 0.40),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg-menu.png"),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 10,
                bottom: 0,
                right: 0,
                left: 0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                          color: Colors.white),
                      height: MediaQuery.of(context).size.height / 1.1,
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 18,
                        bottom: 25,
                        right: 16,
                        left: 16,
                        child: Container(
                          child: Column(
                            children: [
                              Flexible(
                                  flex: 4,
                                  child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              10,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                "KELUARGA",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Data keluarga dan orang serumah pekerja",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              Flexible(
                                  flex: 9,
                                  child: Container(
                                    color: Colors.black,
                                  )),
                              Flexible(
                                  flex: 3,
                                  child: Container(
                                    color: Colors.green,
                                  )),
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
