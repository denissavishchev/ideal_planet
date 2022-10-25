import 'package:flutter/material.dart';
import 'package:transparent_page/constants.dart';


class TopBoxList extends StatelessWidget {
  const TopBoxList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black.withOpacity(0.4), Colors.transparent]
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [kWhite.withOpacity(0.4),
                        kBlue.withOpacity(0.15)],
                      stops: const [0.6, 1],
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: namesColors[index].withOpacity(0.2),
                                    blurRadius: 5,
                                    spreadRadius: 5,
                                  )
                                ]
                              ),
                              child: Text(planetNames[index], style: TextStyle(color: namesColors[index], fontSize: 20, fontWeight: FontWeight.bold),)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 10),
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
                              width: 30,
                              height: 30,
                              child: const Icon(Icons.menu, color: kDark,),
                            ),
                          ),
                        )
                      ],
                    ),
                    Image.asset('assets/images/${images[index]}'),
                    Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                              child: Text(descriptions[index], style: const TextStyle(color: kWhite),))),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            width: 20,
            color: Colors.transparent,
          );
        },
      ),
    );
  }
}
