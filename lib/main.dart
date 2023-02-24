// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: myapp(),
  ));
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  String ans = "";
  String str1 = "";
  String str2 = "";
  int temp = 0;
  bool getx = true;
  bool apbar = true;

  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();

  Model m = Get.put(Model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent.shade200,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: apbar ? Text("Calculator") : Text("GetX Calculator"),
        ),
        body: getx
            ? Container(
            height: 550,
            margin: EdgeInsets.only(top: 50, left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black87,
                border: Border.all(width: 2, color: Colors.blue)),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "  ${ans}",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 45,
                  width: 315,
                  margin: EdgeInsets.only(
                      left: 10, right: 10, top: 30, bottom: 40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "C",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFF6666),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("C");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "%",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB266),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("%");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "CE",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB266),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("CE");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "/",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB266),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("/");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () => abc("1"),
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("2");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("3");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "X",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB266),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("X");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "4",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("4");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("5");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "6",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("6");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB266),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("-");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "7",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("7");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "8",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("8");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "9",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("9");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB266),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("+");
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "00",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffC0C0C0),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("00");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "0",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc("0");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          ".",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffC0C0C0),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () {
                        abc(".");
                      },
                    ),
                    InkWell(
                      highlightColor: Colors.blue,
                      child: Container(
                        child: Text(
                          "=",
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xffFFB266),
                            borderRadius: BorderRadius.circular(7)),
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(10),
                      ),
                      onTap: () => abc("="),
                    ),
                  ],
                ),
                InkWell(
                  child: Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blueGrey,
                                spreadRadius: 1.5,
                                blurRadius: 5,
                                offset: Offset(0, 2))
                          ]),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("GetX",
                              style: TextStyle(
                                  fontSize: 20, letterSpacing: 2.5)),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      )),
                  onTap: () {
                    setState(() {
                      getx = false;
                      apbar = false;
                    });
                  },
                )
              ],
            ))
            : Container(
            height: 550,
            margin: EdgeInsets.only(top: 50, left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                border: Border.all(width: 2, color: Colors.black)),
            child: ListView(
              children: [
                Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: double.infinity,
                      child: TextField(
                        controller: first,
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.blueGrey,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 3)),
                          border: OutlineInputBorder(),
                          hintText: "Enter First",
                          labelText: "First",
                          labelStyle: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    )),
                Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: double.infinity,
                      child: TextField(
                        controller: second,
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.blueGrey,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blueGrey, width: 3)),
                          border: OutlineInputBorder(),
                          hintText: "Enter Second",
                          labelText: "Second",
                          labelStyle: TextStyle(color: Colors.blueGrey),
                        ),
                      ),
                    )),
                Center(
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Obx(() => Text(
                        "Answer :  ${m.ans}",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey),
                          onPressed: () {
                            String First = first.text;
                            String Second = second.text;

                            m.plus(First, Second);
                          },
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey),
                          onPressed: () {
                            String First = first.text;
                            String Second = second.text;

                            m.minus(First, Second);
                          },
                          child: Text(
                            "-",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey),
                          onPressed: () {
                            String First = first.text;
                            String Second = second.text;

                            m.multi(First, Second);
                          },
                          child: Text(
                            "*",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blueGrey),
                          onPressed: () {
                            String First = first.text;
                            String Second = second.text;

                            m.div(First, Second);
                          },
                          child: Text( "/", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          )),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height:37,width:205,
                      margin: EdgeInsets.all(15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red.shade300),
                          onPressed: () {
                            setState(() {
                              first.text = "";
                              second.text = "";
                            });
                          },
                          child: Text("Clear All", style: TextStyle(
                              letterSpacing: 1.5, color: Colors.white, fontSize:18),
                          )),
                    ),
                  ],
                ),
                Column(children: [
                  InkWell(
                    child: Container(
                        margin: EdgeInsets.only(top:80),
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blueGrey,
                                  spreadRadius: 0.10,
                                  blurRadius: 2,
                                  offset: Offset(0, 2))
                            ]),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.arrow_back_ios_new_sharp),
                            Text("Back",
                                style: TextStyle(
                                    fontSize: 20, letterSpacing: 2.5)),
                          ],
                        )),
                    onTap: () {
                      setState(() {
                        getx = true;
                        apbar = true;
                      });
                    },
                  )
                ],)
              ],
            )
        )
    );
  }
  abc(String a) {
    setState(() {
      if (a == "1" ||
          a == "2" ||
          a == "3" ||
          a == "4" ||
          a == "5" ||
          a == "6" ||
          a == "7" ||
          a == "8" ||
          a == "9" ||
          a == "0" ||
          a == "00") {
        ans = ans + a;
      } else if (a == "C") {
        ans = "";
      } else if (a == "CE") {
        ans = ans.substring(0, ans.length - 1);
      } else if (a == "X") {
        temp = 1;
        str1 = ans;
        ans = "";
      } else if (a == "-") {
        temp = 2;
        str1 = ans;
        ans = "";
      } else if (a == "+") {
        temp = 3;
        str1 = ans;
        ans = "";
      } else if (a == "/") {
        temp = 4;
        str1 = ans;
        ans = "";
      } else if (a == "%") {
        temp = 5;
        str1 = ans;
        ans = "";
      } else if (a == "=") {
        str2 = ans;
        ans = "";
        dynamic a3 = 0;
        int a1, a2;
        a1 = int.parse(str1);
        a2 = int.parse(str2);

        if (temp == 1) {
          a3 = a1 * a2;
        } else if (temp == 2) {
          a3 = a1 - a2;
        } else if (temp == 3) {
          a3 = a1 + a2;
        } else if (temp == 4) {
          a3 = a1 / a2;
        } else if (temp == 5) {
          a3 = a1 % a2;
        }
        ans = a3.toString();
      }
    });
  }
}

class Model extends GetxController {
  RxDouble ans = 0.0.obs;

  void plus(
      String First,
      String Second,
      ) {
    double a = 0;
    double b = 0;

    if (First.trim().isNotEmpty) {
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty) {
      b = double.parse(Second);
    }

    double c = a + b;
    ans.value = c;
    print(ans);
  }

  void minus(String First, String Second) {
    double a = 0;
    double b = 0;

    if (First.trim().isNotEmpty) {
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty) {
      b = double.parse(Second);
    }

    double c = a - b;
    ans.value = c;
    print(ans);
  }

  void multi(String First, String Second) {
    double a = 0;
    double b = 0;

    if (First.trim().isNotEmpty) {
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty) {
      b = double.parse(Second);
    }

    double c = a * b;
    ans.value = c;
    print(ans);
  }

  void div(String First, String Second) {
    double a = 0;
    double b = 0;

    if (First.trim().isNotEmpty) {
      a = double.parse(First);
    }
    if (Second.trim().isNotEmpty) {
      b = double.parse(Second);
    }

    double c = a / b;
    ans.value = c;
    print(ans);
  }
}
