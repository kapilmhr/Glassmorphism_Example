import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double _height;
  late double _width;
  @override
  Widget build(BuildContext context) {

    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Glassmorphic Card'),
        ),
        body: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.indigoAccent, Colors.indigoAccent, Colors.indigoAccent, Colors.indigoAccent],
              stops: [0.2, 0.5, 0.7, 1],
              center: Alignment(0.1, 0.3),
              focal: Alignment(-0.1, 0.6),
              focalRadius: 2,
            ),
          ),

          // building the layout
          child: Center(
            child: GlassmorphicContainer(
              height: _height * 0.3,
              width: _width * 0.9,
              borderRadius: 15,
              blur: 15,
              alignment: Alignment.center,
              border: 2,
              linearGradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.2),
                Colors.white38.withOpacity(0.2)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderGradient: LinearGradient(colors: [
                Colors.white24.withOpacity(0.2),
                Colors.white70.withOpacity(0.2)
              ]),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    spreadRadius: 16,
                    color: Colors.black.withOpacity(0.1),
                  )
                ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20.0,
                      sigmaY: 20.0,
                    ),
                    child: Container(
                        height: _height * 0.7,
                        width: _width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              width: 1.5,
                              color: Colors.white.withOpacity(0.2),
                            )),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('TESLA BANK',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                  Icon(
                                    Icons.credit_card_sharp,
                                    color: Colors.white.withOpacity(0.75),
                                  )
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('VISA',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                  Text('11/27',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('1548 3777 9902 9034',
                                      style: TextStyle(
                                          color:
                                          Colors.white.withOpacity(0.75))),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
