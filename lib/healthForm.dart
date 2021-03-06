import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:r3lax_stable/family.dart';
import 'package:r3lax_stable/home.dart';

double ukuranFont = 14;
IconData iconHealthForm = Icons.add;
String textalertHealth = "Wajib Diisi";

var val1 = -1;
var val = -1;

class HealthForm extends StatefulWidget {
  @override
  _HealthFormState createState() => _HealthFormState();
}

class _HealthFormState extends State<HealthForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
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
                    Positioned(
                      top: MediaQuery.of(context).size.height / 50,
                      left: MediaQuery.of(context).size.width / 1.28,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF4EC738),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          height: MediaQuery.of(context).size.width * 0.09,
                          width: MediaQuery.of(context).size.width * 0.16,
                          child: IconButton(
                              iconSize: MediaQuery.of(context).size.height,
                              icon: ImageIcon(
                                AssetImage("assets/ic-edit-family.png"),
                                color: Colors.white,
                                size: MediaQuery.of(context).size.height,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Family()));
                              })),
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg-menu.png"),
                        fit: BoxFit.fill)),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)),
                            color: Colors.white),
                        height: MediaQuery.of(context).size.height / 1.1,
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height / 28,
                          bottom: 0,
                          left: 16,
                          right: 24,
                          child: Column(
                            children: [
                              Flexible(
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "HEALTH FORM",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Monitoring Kondisi Kesehatan Harian Pekerja",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black45),
                                      )
                                    ],
                                  ),
                                ),
                                flex: 1,
                              ),
                              Flexible(
                                child: Container(
                                  margin: EdgeInsets.only(top: 21),
                                  child: ListView(
                                    children: <Widget>[
                                      listviewHealthForm(
                                        "Apakah hari ini anda atau orang serumah ada yang tidak sehat?",
                                        "Ada",
                                        "Tidak Ada",
                                      ),
                                      listviewHealthForm(
                                        "Apakah ada yang sedang melakukan isolasi mandiri?",
                                        "Ada",
                                        "Tidak Ada",
                                      ),
                                      listviewHealthForm(
                                        "Apakah ada yang memiliki riwayat kontak erat dengan kasus konfirmasi positif dalama 3 hari terakhir?",
                                        "Ada",
                                        "Tidak Ada",
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 5,
                              ),
                              Flexible(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.red),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Next",
                                            style:
                                                TextStyle(fontSize: ukuranFont),
                                          ),
                                          Icon(Icons.arrow_forward)
                                        ],
                                      )),
                                ),
                                flex: 1,
                              ),
                            ],
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Container listviewHealthForm(
      String textjudul, String fieldisi1, String fieldisi2) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            textjudul,
            style: TextStyle(fontSize: ukuranFont),
          ),
          Container(
            child: Row(children: <Widget>[
              Radio(
                value: 1,
                groupValue: val1,
                onChanged: (value) {
                  setState(() {
                    val1 = value;
                  });
                },
                activeColor: Colors.blue,
                toggleable: true,
              ),
              Text(
                fieldisi1,
                style: TextStyle(fontSize: ukuranFont),
              ),
            ]),
          ),
          Container(
            child: Row(children: <Widget>[
              Radio(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value;
                  });
                },
                activeColor: Colors.blue,
                toggleable: true,
              ),
              Text(
                fieldisi2,
                style: TextStyle(fontSize: ukuranFont),
              )
            ]),
          ),
          Container(
              child: Text(
            textalertHealth,
            style: TextStyle(fontSize: 10, color: Colors.red),
          )),
        ],
      ),
    );
  }
}
