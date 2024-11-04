import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  String turn = 'x';
  List<String> containers = ['', '', '', '', '', '', '', '', ''];
  String title = 'Ходят: ';
  int counter = 0;

  bool isVinner() {
    var combos = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];
    for (var combo in combos) {
      if (containers[combo[0]] == containers[combo[1]] &&
          containers[combo[1]] == containers[combo[2]] &&
          containers[combo[0]] != '') {
        return true;
      }
    }
    return false;
  }

  void _Tap(int index) {
    if (containers[index] == '') {
      setState(() {
        containers[index] = turn;
        counter++;
      });
      if (turn == 'x') {
        setState(() {
          turn = 'o';
        });
      } else {
        setState(() {
          turn = 'x';
        });
      }
    } else {
      return;
    }
    if (isVinner()) {
      if (turn == 'x') {
        setState(() {
          turn = 'o';
        });
      } else {
        setState(() {
          turn = 'x';
        });
      }
      setState(() {
        title = 'Победитель: ';
      });
      return;
    }
    if (counter == 9) {
      setState(() {
        title = 'Ничья';
        turn = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Крестики нолики',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 32, 32, 32),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$title $turn',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _Tap(0);
                      },
                      child: Container(
                        child: Text(
                          containers[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _Tap(1);
                      },
                      child: Container(
                        child: Text(
                          containers[1],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _Tap(2);
                      },
                      child: Container(
                        child: Text(
                          containers[2],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _Tap(3);
                      },
                      child: Container(
                        child: Text(
                          containers[3],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _Tap(4);
                      },
                      child: Container(
                        child: Text(
                          containers[4],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _Tap(5);
                      },
                      child: Container(
                        child: Text(
                          containers[5],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _Tap(6);
                      },
                      child: Container(
                        child: Text(
                          containers[6],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _Tap(7);
                      },
                      child: Container(
                        child: Text(
                          containers[7],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _Tap(8);
                      },
                      child: Container(
                        child: Text(
                          containers[8],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 57,
                          ),
                        ),
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                  turn = 'x';
                  containers = ['', '', '', '', '', '', '', '', ''];
                  title = 'Ходят: ';
                });
              },
              icon: Icon(
                Icons.restart_alt,
                color: Colors.white,
              ),
              iconSize: 50,
            ),
          ],
        ),
      ),
    );
  }
}
