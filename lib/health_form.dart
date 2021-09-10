import 'package:flutter/material.dart';

double ukuran_font = 14;
IconData icon_health_form = Icons.add;
String textalert_health = "Wajib Diisi";
int val = -1;

class Health_form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Icon(Icons.arrow_back),
                      top: 20,
                      left: 20,
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
                        height: MediaQuery.of(context).size.height / 1.2,
                      ),
                    ],
                  )),
              Positioned(
                  top: 110,
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "HEALTH FORM",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Monitoring Kondisi Kesehatan Harian Pekerja",
                                style: TextStyle(fontSize: 14),
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
                              listview_health_form(
                                "Apakah hari ini anda atau orang serumah ada yang tidak sehat?",
                                "Ada",
                                "Tidak Ada",
                              ),
                              listview_health_form(
                                  "Apakah ada yang sedang melakukan isolasi mandiri?",
                                  "Ada",
                                  "Tidak Ada"),
                              listview_health_form(
                                  "Apakah ada yang memiliki riwayat kontak erat dengan kasus konfirmasi positif dalama 3 hari terakhir?",
                                  "Ada",
                                  "Tidak Ada"),
                            ],
                          ),
                        ),
                        flex: 5,
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                              onPressed: () {},
                              child: Text(
                                "Next",
                                style: TextStyle(fontSize: ukuran_font),
                              )),
                        ),
                        flex: 1,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Container listview_health_form(
    String textjudul,
    String fieldisi1,
    String fieldisi2,
  ) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            textjudul,
            style: TextStyle(fontSize: ukuran_font),
          ),
          Container(
            child: Row(children: <Widget>[
              Radio(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setstate() {
                    val = value;
                  }

                  ;
                },
                activeColor: Colors.green,
              ),
              Text(
                fieldisi1,
                style: TextStyle(fontSize: ukuran_font),
              ),
            ]),
          ),
          Container(
            child: Row(children: <Widget>[
              Radio(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setstate() {
                    val = value;
                  }

                  ;
                },
                activeColor: Colors.green,
              ),
              Text(
                fieldisi2,
                style: TextStyle(fontSize: ukuran_font),
              )
            ]),
          ),
          Container(
              child: Text(
            textalert_health,
            style: TextStyle(fontSize: 10, color: Colors.red),
          )),
        ],
      ),
    );
  }
}
