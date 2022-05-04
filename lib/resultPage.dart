import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math';
import 'package:Dart_basics/nod_nok.dart';
import 'package:Dart_basics/binary.dart';
import 'package:Dart_basics/findNum.dart';
import 'package:Dart_basics/point.dart';
import 'package:Dart_basics/user.dart';

class resultPage extends StatelessWidget {
  const resultPage({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD4E7FE),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Результаты всех вычислений',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color(0XFF343E87)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: SizedBox(
              height: 680,
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Text(
                    '          Задание 1 (Указанными вами значениями)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  buildContainerResultsNods(context),
                  Text(
                    '          Задание 2 (Указанными вами значениями)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  buildContainerResultsBinary(context),
                  Text(
                    '          Задание 3 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsFindNum(context),
                  Text(
                    '          Задание 4 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsFindString(context),
                  Text(
                    '          Задание 5 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsNoRepetitions(context),
                  Text(
                    '          Задание 6 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsDistance(context),
                  Text(
                    '          Задание 7 (Указанными вами значениями)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  buildContainerResultsKoren(context),
                  Text(
                    '          Задание 8 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsUsers(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainerResultsNods(context) {
    var nodNokFirstNum = int.parse(nodNokFirstNumController.text);
    var nodNokSecondNum = int.parse(nodNokSecondNumController.text);
    var calculator = nodNok();
    var noda =
    ('НОД чисел ($nodNokFirstNum, $nodNokSecondNum) = ${calculator.nod(nodNokFirstNum, nodNokSecondNum)}');
    var noka =
    ('НОК чисел ($nodNokFirstNum, $nodNokSecondNum) = ${calculator.nok(nodNokFirstNum, nodNokSecondNum)}');
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'НОД',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'НОК',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  '$noda',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                child: Text('$noka'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsBinary(context) {
    var binaryNum = int.parse(binaryNumControlled.text);
    var result = binary();
    String resultBinaryText =
    ('$binaryNum в двоичной системе = ${result.intToBinary(binaryNum)}');
    int binaryNum2 = int.parse('${result.intToBinary(binaryNum)}');
    String resultBinaryToIntText =
    ('$binaryNum2 в десятичной системе = $binaryNum');
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'В двоичной',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'В десятичной',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  '$resultBinaryText',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                child: Text('$resultBinaryToIntText'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsFindNum(context) {
    var string = 'word 1 3 word 2 word 4321 21111 word';

    var res = FindNum();
    String result = ('  ${res.findNumsIn(string)}');

    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Числа в строке: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  '$result',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsFindString(context) {
    var wordsList = ['a', 'b', 'a', 'a', 'one', 'one', 'one', 'three', 'six'];
    var text = FindNum();
    String result = (' ${text.findStringsIn(wordsList)}');

    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Вхождения \nслов \nв коллекцию: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  '$result',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsNoRepetitions(context) {
    var wordsList = ['a', 'b', 'a', 'a', 'one', 'one', 'one', 'three', 'six'];
    var text = FindNum();
    String result = (' ${text.findNumNamesIn(wordsList)}');

    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Цифры без \nповторений \nв коллекции: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  '$result',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsDistance(context) {
    var point = Point(1, 2, 3);
    String pointResult = (' ${point.distanceTo(Point(1, 2, 3))}');

    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Расстояние \nмежду \nточками: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  '$pointResult',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsKoren(context) {
    var chisloKor = int.parse(chisloKornya.text);
    var korChisla = int.parse(korenChisla.text);
    final answer = pow(chisloKor, 1 / korChisla);
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Корень: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  'Число $chisloKor из под корня $korChisla \nровняется = $answer ',
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsUsers(context) {

    var userManager = UserManager<User>();

    final userA = User('a@a.ru');

    final userList = [
      User.empty(),
      userA,
      User('b@b.ru'),
      AdminUser.empty(),
      AdminUser('c@c.ru'),
      AdminUser('d@d.ru'),
      GeneralUser.empty(),
      GeneralUser('e@e.ru')
    ];

    userManager.add(userList);

    userManager.removeOne(userA);

    String userResults = ('${userManager.getEmails()}');

    var chisloKor = int.parse(chisloKornya.text);
    var korChisla = int.parse(korenChisla.text);
    final answer = pow(chisloKor, 1 / korChisla);
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: Color(0xFFF9FFB), borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Список \nадресов \nэл. почты:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  userResults,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }



}
