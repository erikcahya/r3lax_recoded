import 'package:flutter/material.dart';
import 'package:r3lax_stable/home.dart';

class Family extends StatefulWidget {
  @override
  _FamilyState createState() => _FamilyState();
}

String _valGender;
List _listGender = [
  "Belum Vaksin",
  "Vaksin Pertama",
  "Vaksin Pertama",
  "Tidak Vaksin"
];

class _FamilyState extends State<Family> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
                          bottom: 0,
                          right: 16,
                          left: 16,
                          child: Container(
                            child: Column(
                              children: [
                                Flexible(
                                    flex: 2,
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                15,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "KELUARGA",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              37,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  child: Text(
                                                    "Data keluarga dan orang serumah pekerja",
                                                    style: TextStyle(
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            50,
                                                        color: Colors.black54),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Flexible(
                                    flex: 13,
                                    child: DefaultTabController(
                                        length: 2,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            TabBar(
                                              labelColor: Colors.black,
                                              tabs: <Widget>[
                                                Tab(
                                                  text: "Data Keluarga",
                                                ),
                                                Tab(
                                                  text: "Data Pekerja",
                                                ),
                                              ],
                                            ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  2,
                                              child: TabBarView(
                                                children: <Widget>[
                                                  Container(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: <Widget>[
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 20, 0, 0),
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height /
                                                              4,
                                                          decoration:
                                                              BoxDecoration(
                                                            image: DecorationImage(
                                                                scale: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height,
                                                                image: AssetImage(
                                                                    "assets/img-no-record-yet.png"),
                                                                fit: BoxFit
                                                                    .fitHeight),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 20, 0, 0),
                                                          child: Text(
                                                            "Tidak Ada Data Keluarga",
                                                            style: TextStyle(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height /
                                                                    35,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0),
                                                          child: Text(
                                                            "Silahkan Masukkan data Keluarga Anda",
                                                            style: TextStyle(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height /
                                                                    50,
                                                                color: Colors
                                                                    .black54),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 16, 0, 0),
                                                    child: ListView(
                                                      children: <Widget>[
                                                        Card(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 10),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: <Widget>[
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        16,
                                                                        7,
                                                                        7),
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height /
                                                                    9,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    5,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        scale:
                                                                            1.2,
                                                                        image: AssetImage(
                                                                            "assets/ic-personel-health.png"),
                                                                        fit: BoxFit
                                                                            .none)),
                                                              ),
                                                              Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height /
                                                                    8,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "John Louis",
                                                                      style: TextStyle(
                                                                          fontSize: MediaQuery.of(context).size.height /
                                                                              45,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    Container(
                                                                      child: Text(
                                                                          "Pekerja",
                                                                          style: TextStyle(
                                                                              fontSize: MediaQuery.of(context).size.height / 55,
                                                                              color: Colors.black54)),
                                                                    ),
                                                                    Container(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height /
                                                                          37,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                MediaQuery.of(context).size.height / 30,
                                                                            child:
                                                                                Text(
                                                                              "Status Vaksin : ",
                                                                              style: TextStyle(
                                                                                fontSize: MediaQuery.of(context).size.height / 60,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                3),
                                                                            child:
                                                                                DropdownButton(
                                                                              underline: Container(
                                                                                height: 20,
                                                                              ),
                                                                              hint: Text(
                                                                                "Status Vaksin",
                                                                                style: TextStyle(
                                                                                  fontSize: MediaQuery.of(context).size.height / 60,
                                                                                ),
                                                                              ),
                                                                              value: _valGender,
                                                                              items: _listGender.map((value) {
                                                                                return DropdownMenuItem(
                                                                                  child: Text(
                                                                                    value,
                                                                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height / 60),
                                                                                  ),
                                                                                  value: value,
                                                                                );
                                                                              }).toList(),
                                                                              onChanged: (value) {
                                                                                setState(() {
                                                                                  _valGender = value; //Untuk memberitahu _valGender bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                                                                                });
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Card(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 10),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: <Widget>[
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0,
                                                                        16,
                                                                        7,
                                                                        7),
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height /
                                                                    9,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    5,
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        scale:
                                                                            1.2,
                                                                        image: AssetImage(
                                                                            "assets/ic-personel-health.png"),
                                                                        fit: BoxFit
                                                                            .none)),
                                                              ),
                                                              Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height /
                                                                    8,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: <
                                                                      Widget>[
                                                                    Text(
                                                                      "John Louis",
                                                                      style: TextStyle(
                                                                          fontSize: MediaQuery.of(context).size.height /
                                                                              45,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                    Container(
                                                                      child: Text(
                                                                          "Pekerja",
                                                                          style: TextStyle(
                                                                              fontSize: MediaQuery.of(context).size.height / 55,
                                                                              color: Colors.black54)),
                                                                    ),
                                                                    Container(
                                                                      height: MediaQuery.of(context)
                                                                              .size
                                                                              .height /
                                                                          37,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                MediaQuery.of(context).size.height / 30,
                                                                            child:
                                                                                Text(
                                                                              "Status Vaksin : ",
                                                                              style: TextStyle(
                                                                                fontSize: MediaQuery.of(context).size.height / 60,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                3),
                                                                            child:
                                                                                DropdownButton(
                                                                              underline: Container(
                                                                                height: 20,
                                                                              ),
                                                                              hint: Text(
                                                                                "Status Vaksin",
                                                                                style: TextStyle(
                                                                                  fontSize: MediaQuery.of(context).size.height / 60,
                                                                                ),
                                                                              ),
                                                                              value: _valGender,
                                                                              items: _listGender.map((value) {
                                                                                return DropdownMenuItem(
                                                                                  child: Text(
                                                                                    value,
                                                                                    style: TextStyle(fontSize: MediaQuery.of(context).size.height / 60),
                                                                                  ),
                                                                                  value: value,
                                                                                );
                                                                              }).toList(),
                                                                              onChanged: (value) {
                                                                                setState(() {
                                                                                  _valGender = value; //Untuk memberitahu _valGender bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                                                                                });
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ))),
                                Flexible(
                                    flex: 4,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.blue[800]),
                                              onPressed: () {},
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    40,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Text(
                                                  "Tambahkan Anggota Keluarga",
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.red),
                                              onPressed: () {},
                                              child: Container(
                                                color: Colors.red,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    40,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Text(
                                                  "Saya Tinggal Sendiri",
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ))
                                        ],
                                      ),
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
      ),
    );
  }
}
