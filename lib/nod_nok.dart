import 'main.dart';
import 'package:flutter/material.dart';
import 'package:Dart_basics/resultPage.dart';

class nodNok {

  int nod(int nodNokFirstNum, int nodNokSecondNum) {
    while (nodNokSecondNum != 0) {
      var t = nodNokSecondNum;
      nodNokSecondNum = nodNokFirstNum % t;
      nodNokFirstNum = t;
    }

    return nodNokFirstNum;
  }


  int nok(int nodNokFirstNum, int nodNokSecondNum) {
    return (nodNokFirstNum / nod(nodNokFirstNum, nodNokSecondNum) * nodNokSecondNum).abs().toInt();
  }


  List<int> factors(int number) {
    if (number < 2) return [];

    int factor = 2;
    List<int> listFactors = [];

    while (number / factor != 1) {
      if (number % factor == 0) {
        listFactors.add(factor);

        number = number ~/ factor;
        factor = 2;
      } else {
        factor++;
      }
    }

    listFactors.add(factor);

    return listFactors;
  }
}
