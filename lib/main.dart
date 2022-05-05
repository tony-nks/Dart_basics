import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:dart_basics/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartHome(),
    );
  }
}

class StartHome extends StatefulWidget {
  const StartHome({Key? key}) : super(key: key);

  @override
  State<StartHome> createState() => StartHomeState();
}
final formKey = GlobalKey<FormState>();

final nodNokFirstNumController = TextEditingController();
final nodNokSecondNumController = TextEditingController();
final binaryNumControlled = TextEditingController();
final chisloKornya = TextEditingController();
final korenChisla = TextEditingController();

@override
void dispose(){
  nodNokFirstNumController.dispose();
  nodNokSecondNumController.dispose();
  binaryNumControlled.dispose();
  chisloKornya.dispose();
  korenChisla.dispose();

  //super.dispose();
}

class StartHomeState extends State<StartHome> {




  @override
  Widget build(BuildContext context) {
    var timeNow = DateTime.now().hour;
    String hello = (' ');
    if ((timeNow <= 12 && timeNow >= 8)) {
      hello = ('Доброго утра Куратор!');
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      hello = ('Доброго дня Куратор!');
    } else if ((timeNow > 16) && (timeNow < 20)) {
      hello = ('Доброго вечера Куратор!');
    } else {
      hello = ('Доброй ночи Куратор!');
    }




    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFD4E7FE)),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(15)),
            Row(
              children: [
                const SizedBox(
                  height: 150,
                  width: 30,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.2),
                          blurRadius: 12,
                          spreadRadius: 8,
                        ),
                      ],
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Islam.jpg'),
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hello,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Color(0XFF343E87)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Заполните все поля ниже и нажмите  на \nплавающую кнопку',
                      style: TextStyle(fontSize: 13, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ],
            ),
            Expanded( child:
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SizedBox(
                height: 600,
                child: Form(
                  key: formKey,
                  child: ListView(
                    padding: const EdgeInsets.all(15),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 25),
                        decoration: BoxDecoration(
                            color: const Color(0x0ffc5df6), borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            const SizedBox(height: 5,),
                            const Text('Определение НОД -НОКа', style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF343E87)),),
                            TextFormField(
                              controller: nodNokFirstNumController,
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  labelText: 'Введите число',
                                  hintText: 'Первое число для НОД-НОКа'),
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (value) => _validateNum(value!)
                                  ? null
                                  : 'Поле обязательно (Значение должно быть больше 0)',
                            ),
                            TextFormField(
                              controller: nodNokSecondNumController,
                              maxLength: 3,
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: const InputDecoration(
                                  labelText: 'Введите число',
                                  hintText: 'Второе число для НОД-НОКа'),
                              validator: (value) => _validateNum(value!)
                                  ? null
                                  : 'Поле обязательно (Значение должно быть больше 0)',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 25),
                        decoration: BoxDecoration(
                            color: const Color(0x0ffc5df6), borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            const SizedBox(height: 5,),
                            const Text('Пробразование в двоичный код', style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF343E87)),),
                            TextFormField(
                              controller: binaryNumControlled,
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  labelText: 'Введите число',
                                  hintText: 'Это число будет преобразовано в двоичное'),
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (value) => _validateNum(value!)
                                  ? null
                                  : 'Поле обязательно (Значение должно быть больше 0)',

                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 25),
                        decoration: BoxDecoration(
                            color: const Color(0x0ffc5df6), borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            const SizedBox(height: 5,),
                            const Text('Вычисление корня', style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF343E87)),),
                            TextFormField(
                              controller: chisloKornya,
                              maxLength: 3,
                              decoration: const InputDecoration(
                                  labelText: 'Число из под корня',
                                  hintText: 'Число из под корня'),
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (value) => _validateNum(value!)
                                  ? null
                                  : 'Поле обязательно (Значение должно быть больше 0)',
                            ),
                            TextFormField(
                              controller: korenChisla,
                              maxLength: 3,
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: const InputDecoration(
                                  labelText: 'Степень корня',
                                  hintText: 'Степень корня'),
                              validator: (value) => _validateNum(value!)
                                  ? null
                                  : 'Поле обязательно (Значение должно быть больше 0)',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),

                    ],
                  ),
                ),
              ),
            ),
            ),
            //resultPage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(formKey.currentState!.validate()){
            Route route = MaterialPageRoute(builder: (context) => const ResultPage());
            Navigator.push(context, route);
          }
          //result_page.dart();
        },
        child: const Icon(Icons.find_replace_sharp),
      ),
    );
  }

  bool _validateNum(String input) {
    final _valNum = RegExp(r"[1-9]");
    return _valNum.hasMatch(input);
  }

}
