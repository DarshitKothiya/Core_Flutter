import 'package:flutter/material.dart';

import './module.dart';

class result extends StatefulWidget {
  const result({Key? key}) : super(key: key);

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  double logo = 150;
  String winbutton = "Next";
  String wintag = "Your answer is corrected";

  initState() {
    super.initState();
    if (kbc.winamount == 10000) {
      logo =250;
      winbutton = "Restart";
      wintag = "Congratulation...";
    }
  }

  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: (res == 1)
            ? Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: logo,
                    width: logo,
                    child:
                        Image.asset("assets/images/win.png", fit: BoxFit.cover),
                  ),
                  Text(
                    wintag,
                    style: const TextStyle(fontSize: 25, color: Colors.redAccent),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "You Won",
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                  Text(
                    "₹${kbc.winamount}",
                    style: const TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          kbc.indexchange++;
                          Navigator.pushNamed(context, "/");
                          if (kbc.winamount == 10000) {
                            kbc.indexchange = 0;
                            kbc.winamount = 1000;
                            Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
                          }
                        });
                      },
                      child: Text(
                        winbutton,
                        style: const TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              )
            : Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/images/lose.png",
                        fit: BoxFit.cover),
                  ),
                  const Text(
                    "oops...",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "Your answer is incorrect",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 80,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context, "/");
                        });
                      },
                      child: const Text(
                        "Try again",
                        style: const TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
      ),
    );
  }
}
