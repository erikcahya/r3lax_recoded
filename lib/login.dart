import 'package:flutter/material.dart';
import 'package:r3lax_stable/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img-login.png"),
                          fit: BoxFit.fill)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.78,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 14.9,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50))),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 4.1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/phi-logo.png"),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                            flex: 2,
                            child: Container(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Welcome Back !",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Username"),
                            )),
                        Flexible(
                            flex: 3,
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Misal : erick.suhanda"),
                              ),
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text("Password"),
                            )),
                        Flexible(
                            flex: 3,
                            child: Container(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Masukkan Password Anda"),
                              ),
                            )),
                        Flexible(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Home(),
                                        ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height:
                                        MediaQuery.of(context).size.height / 30,
                                    width:
                                        MediaQuery.of(context).size.width / 1,
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  )),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
