import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String box1 = "";
  String box2 = "";
  String box3 = "";
  String box4 = "";
  String box5 = "";
  String box6 = "";
  String box7 = "";
  String box8 = "";
  String box9 = "";
  String winner = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic-Tac-Toe"),
        centerTitle: true,
        backgroundColor: const Color(0xff090e21),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.redAccent,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box1 == "") {
                          box1 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box1 == "") {
                          box1 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box1 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box1,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box2 == "") {
                          box2 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box2 == "") {
                          box2 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box2 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box2,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box3 == "") {
                          box3 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box3 == "") {
                          box3 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box3 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box3,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box4 == "") {
                          box4 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box4 == "") {
                          box4 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box4 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box4,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box5 == "") {
                          box5 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box5 == "") {
                          box5 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box5 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box5,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box6 == "") {
                          box6 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box6 == "") {
                          box6 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box6 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box6,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box7 == "") {
                          box7 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box7 == "") {
                          box7 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box7 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box7,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box8 == "") {
                          box8 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box8 == "") {
                          box8 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box8 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box8,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box9 == "") {
                          box9 = "X";
                        }
                      });
                    },
                    onDoubleTap: () {
                      setState(() {
                        if (box9 == "") {
                          box9 = "O";
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        box9 = "";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border: Border.all(color: Colors.white, width: 5)),
                      child: Text(
                        box9,
                        style: const TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 7),
                  borderRadius: BorderRadius.circular(20)
                ),
              child: Text(winner,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
              ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (box1 == "X" && box2 == "X" && box3 == "X") {
                          winner = "X-player win...";
                        } else if (box1 == "X" && box4 == "X" && box7 == "X") {
                          winner = "X-player win...";
                        } else if (box2 == "X" && box5 == "X" && box8 == "X") {
                          winner = "X-player win...";
                        } else if (box3 == "X" && box6 == "X" && box9 == "X") {
                          winner = "X-player win...";
                        } else if (box4 == "X" && box5 == "X" && box6 == "X") {
                          winner = "X-player win...";
                        } else if (box7 == "X" && box8 == "X" && box9 == "X") {
                          winner = "X-player win...";
                        } else if (box1 == "O" && box2 == "O" && box3 == "O") {
                          winner = "O-player win...";
                        } else if (box1 == "O" && box4 == "O" && box7 == "O") {
                          winner = "O-player win...";
                        } else if (box2 == "O" && box5 == "O" && box8 == "O") {
                          winner = "O-player win...";
                        } else if (box3 == "O" && box6 == "O" && box9 == "O") {
                          winner = "O-player win...";
                        } else if (box4 == "O" && box5 == "O" && box6 == "O") {
                          winner = "O-player win...";
                        } else if (box7 == "O" && box8 == "O" && box9 == "O") {
                          winner = "O-player win...";
                        } else {
                          winner = "";
                        }
                      });
                      print(winner);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color:const Color(0xff090e21),
                        border: Border.all(color: Colors.white, width: 7),
                      ),
                      child: const Text(
                        "DONE",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        box1 = "";
                        box2 = "";
                        box3 = "";
                        box4 = "";
                        box5 = "";
                        box6 = "";
                        box7 = "";
                        box8 = "";
                        box9 = "";
                        winner="";
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xff090e21),
                        border: Border.all(color: Colors.white, width: 7),
                      ),
                      child: const Text(
                        "RESET",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
