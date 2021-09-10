import 'package:flutter/material.dart';
import 'package:r3lax_stable/home.dart';
import 'package:r3lax_stable/login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                  child: Image(
                      image: AssetImage("assets/bg-profile.png"),
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height / 1,
                      width: MediaQuery.of(context).size.width / 1)),
              Positioned(
                  top: 10,
                  child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      })),
              Positioned(
                  bottom: 103,
                  top: 73,
                  left: 32,
                  right: 32,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/img-id-card.png"),
                          height: MediaQuery.of(context).size.height / 1.2,
                          width: MediaQuery.of(context).size.width / 1.2,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                            top: 34,
                            left: 67,
                            right: 67,
                            bottom: 130,
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                    flex: 3,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/erick.suhanda.jpg")),
                                      ),
                                    )),
                                Flexible(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "Erick Cahya Suhanda",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                Flexible(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "ICT Programmer",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.green,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                Flexible(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                      width: MediaQuery.of(context).size.width,
                                      child: Text(
                                        "14048",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                Flexible(
                                    flex: 4,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width /
                                          2.8,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "assets/qrcode.png")),
                                      ),
                                    )),
                              ],
                            )),
                      ],
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height / 1.15,
                  right: MediaQuery.of(context).size.width / 11,
                  left: MediaQuery.of(context).size.width / 11,
                  bottom: MediaQuery.of(context).size.height / 40,
                  child: Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height / 30,
                          width: MediaQuery.of(context).size.width / 1,
                          child: Text(
                            "LOGOUT",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
