import 'package:flutter/material.dart';
import 'package:transparent_page/constants.dart';


class BottomBoxList extends StatelessWidget {
  const BottomBoxList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: bottom_box_names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.2), Colors.transparent]
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
                    colors: [kWhite.withOpacity(0.4),
                      kBlue.withOpacity(0.2)],
                    stops: const [0.6, 1],
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(bottom_box_names[index], style: TextStyle(color: kWhite, fontSize: 14, fontWeight: FontWeight.bold),),
                    Text(bottom_box_values[index], style: TextStyle(color: kWhite, fontSize: 18, fontWeight: FontWeight.bold),),
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
