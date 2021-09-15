import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:r3lax_stable/health_form.dart';
import 'package:r3lax_stable/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 2.9,
                        width: MediaQuery.of(context).size.height / 1,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img-cover.png"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.04,
                        left: MediaQuery.of(context).size.width * 0.04,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Profile()));
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 9.5,
                                width: MediaQuery.of(context).size.height / 9.5,
                                alignment: Alignment.topLeft,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/erick.suhanda.jpg"))),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: MediaQuery.of(context).size.height / 9.5,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Erick Cahya Suhanda",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Text(
                                    "ICT Programmer",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 13),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.65,
                right: 0,
                bottom: 0,
                left: 0,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      height: MediaQuery.of(context).size.height / 1.39,
                      width: MediaQuery.of(context).size.width / 1,
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 20,
                        bottom: 0,
                        left: MediaQuery.of(context).size.width / 15,
                        right: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width / 1,
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                  flex: 3,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Health_form()));
                                              },
                                              child: Column(
                                                children: <Widget>[
                                                  Image.asset(
                                                    "assets/ic-attendance-form.png",
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            12,
                                                  ),
                                                  Text(
                                                    "Attendance Form",
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                      Flexible(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Column(
                                            children: <Widget>[
                                              Image.asset(
                                                "assets/ic-attendance-list.png",
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    12,
                                              ),
                                              Text(
                                                "Attendance List",
                                                style: TextStyle(fontSize: 13),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Column(
                                            children: <Widget>[
                                              Image.asset(
                                                "assets/ic-r3-form.png",
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    12,
                                              ),
                                              Text(
                                                "R3FORMS",
                                                style: TextStyle(fontSize: 13),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            color: Colors.white,
                                          )),
                                    ],
                                  )),
                              Flexible(
                                  child: Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Info Terbaru",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Lihat Semua",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                              Flexible(
                                  flex: 2,
                                  child: Column(
                                    children: <Widget>[
                                      CarouselSlider(
                                        options: CarouselOptions(
                                            autoPlayAnimationDuration:
                                                Duration(seconds: 2),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                8),
                                        items: [
                                          "assets/img-r3forms.png",
                                          "assets/img-update.png",
                                        ].map((i) {
                                          return Builder(
                                            builder: (BuildContext context) {
                                              return Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.3,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 8),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.amber),
                                                  child: Image(
                                                    image: AssetImage(
                                                      i,
                                                    ),
                                                    fit: BoxFit.fill,
                                                  ));
                                            },
                                          );
                                        }).toList(),
                                      )
                                    ],
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 16),
                                    height:
                                        MediaQuery.of(context).size.height / 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Layanan Asistensi",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Flexible(
                                                child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  10,
                                              margin: EdgeInsets.only(right: 5),
                                              child: Card(
                                                color: Colors.blueGrey[50],
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Row(
                                                    children: <Widget>[
                                                      Image(
                                                        image: AssetImage(
                                                            "assets/ic-approval-center-soon.png"),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            12,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            12,
                                                      ),
                                                      Text(
                                                        "Approval Center",
                                                        style: TextStyle(
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                26),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                            Flexible(
                                                child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  10,
                                              child: Card(
                                                color: Colors.blueGrey[50],
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Row(
                                                    children: <Widget>[
                                                      Image(
                                                        image: AssetImage(
                                                            "assets/ic-notification-center-soon.png"),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            12,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            12,
                                                      ),
                                                      Text(
                                                        "Notification Center",
                                                        style: TextStyle(
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                26),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
          // body: Container(
          //   child: Stack(
          //     children: <Widget>[
          //       Container(
          //         height: MediaQuery.of(context).size.height / 2.9,
          //         width: MediaQuery.of(context).size.height / 1,
          //         decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage("assets/img-cover.png"),
          //                 fit: BoxFit.fill)),
          //       ),
          //       Align(
          //         alignment: Alignment.bottomCenter,
          //         child: Container(
          //           decoration: BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(40),
          //                   topRight: Radius.circular(40))),
          //           height: MediaQuery.of(context).size.height / 1.39,
          //           width: MediaQuery.of(context).size.width / 1,
          //         ),
          //       ),
          //       Positioned(
          //         top: MediaQuery.of(context).size.height * 0.04,
          //         left: MediaQuery.of(context).size.width * 0.04,
          //         child: Row(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: <Widget>[
          //             InkWell(
          //               onTap: () {
          //                 Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => Profile()));
          //               },
          //               child: Container(
          //                 height: MediaQuery.of(context).size.height / 9.5,
          //                 width: MediaQuery.of(context).size.height / 9.5,
          //                 alignment: Alignment.topLeft,
          //                 decoration: BoxDecoration(
          //                     shape: BoxShape.circle,
          //                     image: DecorationImage(
          //                         fit: BoxFit.cover,
          //                         image:
          //                             AssetImage("assets/erick.suhanda.jpg"))),
          //               ),
          //             ),
          //             Container(
          //               margin: EdgeInsets.only(left: 10),
          //               height: MediaQuery.of(context).size.height / 9.5,
          //               alignment: Alignment.centerLeft,
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: <Widget>[
          //                   Text(
          //                     "Erick Cahya Suhanda",
          //                     style:
          //                         TextStyle(color: Colors.white, fontSize: 15),
          //                   ),
          //                   Text(
          //                     "ICT Programmer",
          //                     style: TextStyle(
          //                         color: Colors.white70, fontSize: 13),
          //                   )
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
        ),
      ),
    );
  }
}
