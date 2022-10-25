import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'constants.dart';


Widget circularSlider = SleekCircularSlider(
  appearance: CircularSliderAppearance(
    customWidths: CustomSliderWidths(
        progressBarWidth: 12,
        trackWidth: 12,
        shadowWidth: 10,
        handlerSize: 2),
    customColors: CustomSliderColors(
      trackColor: kBlue.withOpacity(0.5),
      progressBarColor: kDark.withOpacity(0.8),
      dotColor: kWhite
    ),
    infoProperties: InfoProperties(
      mainLabelStyle: TextStyle(color: kWhite.withOpacity(0.9), fontWeight: FontWeight.bold, fontSize: 24)
    ),
    startAngle: 270,
    angleRange: 360,
  ),
  min: 0,
  max: 100,
  initialValue: 26,
  onChange: (double value) {
    print(value);
  },
);


