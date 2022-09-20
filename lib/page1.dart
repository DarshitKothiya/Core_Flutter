import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextStyle numstyle = const TextStyle(
      fontSize: 30, color: Colors.black, fontWeight: FontWeight.w500); 
  TextStyle opestyle = const TextStyle(
      fontSize: 30, color: Color(0xffF60D58), fontWeight: FontWeight.w500);
  dynamic input1 = 0;
  dynamic input2 = 0;
  String opp = "0";
  dynamic stop = 0;
  dynamic total =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
              ),
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text((opp=="0")?"$input1":(input2==0)?"$input1$opp":"$input1$opp$input2",style: const TextStyle(fontSize: 50,color: Colors.black54),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text((stop==1)?total.toString().split('.')[0]:"",style: const TextStyle(fontSize: 50),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.all(15),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState((){
                            input1 = 0;
                            input2 = 0;
                            opp = "0";
                            stop = 0;
                            total =0;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffF60D58),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Ac",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState((){
                            if(opp=="0"){
                              opp="%";
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          child: Text("%", style: opestyle),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState((){
                            if(opp=="0"){
                              opp="/";
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            "/",
                            style: opestyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+7;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+7;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "7",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+8;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+8;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "8",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+9;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+9;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "9",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                opp = "*";
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "*",
                              style: opestyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+4;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+4;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "4",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+5;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+5;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "5",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+6;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+6;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "6",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                opp = "-";
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "-",
                              style: opestyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+1;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+1;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "1",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+2;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+2;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "2",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10)+3;
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10)+3;
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "3",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                opp = "+";
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "+",
                              style: opestyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*100);
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*100);
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "00",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*10);
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*10);
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "0",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              if(opp=="0"){
                                input1=(input1*0.1);
                              }else if(opp=="+"&&stop==0||opp=="-"&&stop==0||opp=="*"&&stop==0||opp=="/"&&stop==0||opp=="%"&&stop==0){
                                input2 =(input2*0.10);
                              }
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: Text(
                              ".",
                              style: numstyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState((){
                              stop=1;
                              if(opp=="+"){
                                total = input1+input2;
                              }else if(opp =="-"){
                                total = input1-input2;
                              }else if(opp =="*"){
                                total = input1*input2;
                              }else if(opp =="/"){
                                total = input1/input2;
                              }else if(opp =="%"){
                                total = input1%input2;
                              }

                            });
                          },
                          child: Container(
                            height: 80,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffF60D58),
                            ),
                            child: const Text(
                              "=",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
