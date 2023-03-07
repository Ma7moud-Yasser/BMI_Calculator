import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BmiResult extends StatelessWidget {
  final bool Gender ;
  final int Result;
  final int Age;
  
  BmiResult({
    required this.Gender,
    required this.Result,
    required this.Age,

  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0C1234),
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Color(0xff0C1234),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                          color:Color(0xff282C4F),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    children: [
                      Text(
                        'Gender : ${Gender ? 'Male' : 'Female'}',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Result : ${Result}',
                          style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                         ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Age : ${Age}',
                          style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                         ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}