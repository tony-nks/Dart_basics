import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math';
import 'package:dart_basics/nod_nok.dart';
import 'package:dart_basics/binary.dart';
import 'package:dart_basics/find_num.dart';
import 'package:dart_basics/point.dart';
import 'package:dart_basics/user.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4E7FE),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Результаты всех вычислений',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Color(0XFF343E87)),
          ),
          const SizedBox(
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
                  const Text(
                    '          Задание 1 (Указанными вами значениями)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  buildContainerResultsNods(context),
                  const Text(
                    '          Задание 2 (Указанными вами значениями)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  buildContainerResultsBinary(context),
                  const Text(
                    '          Задание 3 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsFindNum(context),
                  const Text(
                    '          Задание 4 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsFindString(context),
                  const Text(
                    '          Задание 5 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsNoRepetitions(context),
                  const Text(
                    '          Задание 6 (Значения были указаны в коде)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF343E87)),
                  ),
                  buildContainerResultsDistance(context),
                  const Text(
                    '          Задание 7 (Указанными вами значениями)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Colors.green),
                  ),
                  buildContainerResultsKoren(context),
                  const Text(
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
    var calculator = NodNok();
    var noda =
        ('НОД чисел ($nodNokFirstNum, $nodNokSecondNum) = ${calculator.nod(nodNokFirstNum, nodNokSecondNum)}');
    var noka =
        ('НОК чисел ($nodNokFirstNum, $nodNokSecondNum) = ${calculator.nok(nodNokFirstNum, nodNokSecondNum)}');
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  noda,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(noka),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsBinary(context) {
    var binaryNum = int.parse(binaryNumControlled.text);
    var result = Binary();
    String resultBinaryText =
        ('$binaryNum в двоичной системе = ${result.intToBinary(binaryNum)}');
    var binaryNum2 = int.parse(result.intToBinary(binaryNum));
    String resultBinaryToIntText =
        ('$binaryNum2 в десятичной системе = $binaryNum');
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  resultBinaryText,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(resultBinaryToIntText),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainerResultsFindNum(context) {
    var string = 'word 1 3 word 2 word 4321 21111 word';

    var res = FindNum();
    String result = ('  ${res.findNums(string)}');

    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  result,
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
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  result,
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
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  result,
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
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: Text(
                  pointResult,
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
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
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

    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          color: const Color(0x0fff9ffb),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
              SizedBox(
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
