import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:transparent_page/inside_box.dart';
import 'package:transparent_page/top_box.dart';
import 'package:transparent_page/top_box_list.dart';

import 'bottom_box.dart';
import 'bottom_box_list.dart';
import 'constants.dart';
import 'customWidgets.dart';
import 'inside_box_statistic.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover
            ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.8, sigmaY: 2.8),
          child: Scaffold(
            backgroundColor: Colors.transparent,
              bottomNavigationBar: BottomAppBar(
                elevation: 1,
                color: kBlue.withOpacity(0.2),
                child: Row(
                  children: [
                    buildNavBarItem('home', 0),
                    buildNavBarItem('search', 1),
                    buildNavBarItem('pulse', 2),
                    buildNavBarItem('user', 3),
                    buildNavBarItem('mail', 4),
                  ],
                ),
              ),
              body: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Hey, Julie...!', style: TextStyle(color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),),
                                    Text('Find you ideal planet...', style: TextStyle(color: kWhite, fontWeight: FontWeight.bold, fontSize: 18),),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8),
                                      ),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            kDark,
                                            Colors.transparent,
                                          ]),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                kWhite,
                                                kWhite.withOpacity(0.3)
                                              ]),
                                        ),
                                        width: 45,
                                        height: 45,
                                        child: const Icon(Icons.color_lens_outlined, color: kDark,),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(8),
                                      ),
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            kDark,
                                            Colors.transparent,
                                          ]),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                kWhite,
                                                kWhite.withOpacity(0.3)
                                              ]),
                                        ),
                                        width: 45,
                                        height: 45,
                                        child: const Icon(Icons.settings, color: kDark,),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                ],
                              ),

                            ],
                          ),
                        )),
                    Positioned(
                      bottom: 400,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          color: Colors.transparent,
                          child: const TopBoxList(),
                        )),
                    Positioned.fill(
                        bottom: 335,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.elliptical(140, 40),
                                    topLeft: Radius.elliptical(140, 40),
                                    bottomRight: Radius.elliptical(140, 40),
                                    bottomLeft: Radius.elliptical(140, 40)
                                ),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [kBlue.withOpacity(0.6),
                                      Colors.transparent,],
                                    stops: const [0.2, 1]
                                )
                            ),
                            width: 180,
                            height: 55,
                            child: const Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 18.0),
                                  child: Text('Post Insights', style: TextStyle(color: kWhite, fontWeight: FontWeight.bold, fontSize: 16),),
                                )),
                          ),
                        )),
                    Positioned(
                      bottom: 220,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                          child: CustomPaint(
                            painter: TopBox(
                            ),
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(40, 35, 40, 50),
                              width: 300,
                              height: 40,
                              // color: Colors.deepOrange.withOpacity(0.3),
                              child: CustomPaint(
                                painter: InsideBox(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: const [
                                    InsideBoxStatistic(icon: Icons.favorite, text: '334',),
                                    InsideBoxStatistic(icon: Icons.message, text: '108',),
                                    InsideBoxStatistic(icon: Icons.telegram_outlined, text: '125',),
                                    InsideBoxStatistic(icon: Icons.star, text: '291',),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),
                    Positioned.fill(
                      bottom: 215,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                             borderRadius: const BorderRadius.only(
                               topRight: Radius.elliptical(140, 40),
                               topLeft: Radius.elliptical(140, 40),
                               bottomRight: Radius.elliptical(140, 40),
                               bottomLeft: Radius.elliptical(140, 40)
                             ),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [kBlue.withOpacity(0.4),
                                    Colors.transparent,],
                                stops: const [0.2, 1]
                              )
                            ),
                            width: 180,
                            height: 55,
                            child: const Align(
                              alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 18.0),
                                  child: Text('Accounts Reached', style: TextStyle(color: kWhite, fontWeight: FontWeight.bold, fontSize: 16),),
                                )),
                          ),
                        )),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 260,
                        child: CustomPaint(
                          painter: BottomBox(
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 50,),
                              Container(
                                color: Colors.transparent,
                                width: 350,
                                height: 100,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: const[
                                              Text('260', style: TextStyle(color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),),
                                              Icon(Icons.circle, color: kDark, size: 10,)
                                            ],
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('Follower\'s', style: TextStyle(color: kWhite, fontSize: 16, fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    circularSlider,
                                    SizedBox(
                                      width: 100,
                                      height: 100,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: const[
                                              Icon(Icons.circle, color: kBlue, size: 10,),
                                              Text('4391', style: TextStyle(color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('Non-Follower\'s', style: TextStyle(color: kWhite, fontSize: 14, fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                    child: Text('Profile Activity\'s', style: TextStyle(color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),)),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                width: 370,
                                height: 60,
                                color: Colors.transparent,
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                  ),
                                    child: const BottomBoxList()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Widget buildNavBarItem(String image, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width / 5,
            height: 40,
            color: Colors.transparent,
          ),
          Container(
              width: 50,
              height: 50,
              padding: (index == _selectedIndex
                  ? const EdgeInsets.all(2)
                  : const EdgeInsets.all(10)),
              margin: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.elliptical(60, 30),
                    bottomRight: Radius.elliptical(60, 30),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: index == _selectedIndex
                      ? kBlue.withOpacity(0.4)
                      : Colors.transparent),
              child: Image.asset('assets/images/$image.png'))
        ],
      ),
    );
  }
}


