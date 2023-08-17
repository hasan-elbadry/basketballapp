import 'package:flutter/material.dart';

void main() {
  runApp(MyClass());
}

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  int count1 = 0;
  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'point counter',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text(
              'point counter',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Team A',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          count1.toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              count1++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 30),
                          ),
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              count1 = count1 + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 30),
                          ),
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              count1 = count1 + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 30),
                          ),
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      width: 5,
                      thickness: 5,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Team B',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          count2.toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              count2++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 30),
                          ),
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              count2 = count2 + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 30),
                          ),
                          color: Colors.amber,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              count2 = count2 + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 30),
                          ),
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    count1 = 0;
                    count2 = 0;
                  });
                },
                child: Text('Reset'),
                color: Colors.amber,
              )
            ],
          )),
    );
  }
}
