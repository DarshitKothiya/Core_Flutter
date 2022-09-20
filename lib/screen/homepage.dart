import 'package:flutter/material.dart';
import './module.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  int checkans = 0;

  List<Map> question = [
    {
      'que': 'Which animal is known as the "Ship of the Desert"?',
      'op1': 'Goat',
      'op2': 'Camel',
      'op3': 'Lion',
      'op4': 'Cow',
      'ans': 'b'
    },
    {
      'que': ' How many days are there in a week?',
      'op1': '5',
      'op2': '9',
      'op3': '7',
      'op4': '6',
      'ans': 'c'
    },
    {
      'que': 'How many hours are there in a day?',
      'op1': '23 ',
      'op2': '25 ',
      'op3': '20 ',
      'op4': '24 ',
      'ans': 'd'
    },
    {
      'que': 'How many letters are there in the English alphabet?',
      'op1': '18 ',
      'op2': '26 ',
      'op3': '29 ',
      'op4': '21 ',
      'ans': 'b'
    },
    {
      'que': 'Rainbow consist of how many colours?',
      'op1': '5 ',
      'op2': '9 ',
      'op3': '7 ',
      'op4': '6 ',
      'ans': 'c'
    },
    {
      'que': 'How many vowels are there in the English alphabet and name them?',
      'op1': '5',
      'op2': '6',
      'op3': '2',
      'op4': '8',
      'ans': 'a'
    },
    {
      'que': 'Which animal is known as the king of the jungle?',
      'op1': 'Goat',
      'op2': 'Camel',
      'op3': 'Lion',
      'op4': 'cow',
      'ans': 'c'
    },
    {
      'que': 'Name the National bird of India?',
      'op1': 'parrot',
      'op2': 'sparrow',
      'op3': 'peacock',
      'op4': 'duck',
      'ans': 'c'
    },
    {
      'que': 'Name the National game of India?',
      'op1': 'cricket',
      'op2': 'hockey',
      'op3': 'kabbadi',
      'op4': 'kho-kho',
      'ans': 'b'
    },
    {
      'que': 'What is the capital of India?',
      'op1': 'Delhi',
      'op2': 'Gujarat',
      'op3': 'Mumbai',
      'op4': 'Kashmir',
      'ans': 'a'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: kbc.indexchange,
      children: question
          .map(
            (e) => Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text(
                      e['que'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Spacer(flex: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 70,
                              width: 180,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState((){
                                    if(e['ans']=="a"){
                                      checkans=1;
                                      kbc.winamount+=1000;
                                    }
                                    Navigator.of(context).pushNamed("page1",arguments: checkans);
                                  });
                                },
                                style:  ElevatedButton.styleFrom(
                                  primary: const Color(0xff1F1E1E),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  )
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "A.",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    Text(
                                      e['op1'],
                                      style: const TextStyle(fontSize: 30),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 70,
                              width: 180,
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState((){
                                      if(e['ans']=="b"){
                                        checkans=1;
                                        kbc.winamount+=1000;
                                      }
                                      Navigator.of(context).pushNamed("page1",arguments: checkans);
                                    });
                                  },
                                  style:  ElevatedButton.styleFrom(
                                      primary: const Color(0xff1F1E1E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "B.",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      Text(
                                        e['op2'],
                                        style: const TextStyle(fontSize: 30),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        const Spacer(flex: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 70,
                              width: 180,
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState((){
                                      if(e['ans']=="c"){
                                        checkans=1;
                                        kbc.winamount+=1000;
                                      }
                                      Navigator.of(context).pushNamed("page1",arguments: checkans);
                                    });
                                  },
                                  style:  ElevatedButton.styleFrom(
                                      primary: const Color(0xff1F1E1E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "C.",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      Text(
                                        e['op3'],
                                        style: const TextStyle(fontSize: 30),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 70,
                              width: 180,
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState((){
                                      if(e['ans']=="d"){
                                        checkans=1;
                                        kbc.winamount+=1000;
                                      }
                                      Navigator.of(context).pushNamed("page1",arguments: checkans);
                                    });
                                  },
                                  style:  ElevatedButton.styleFrom(
                                      primary: const Color(0xff1F1E1E),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      )
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "D.",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      Text(
                                        e['op4'],
                                        style: const TextStyle(fontSize: 30),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        const Spacer(flex: 3),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
          .toList(),
    );
  }
}
