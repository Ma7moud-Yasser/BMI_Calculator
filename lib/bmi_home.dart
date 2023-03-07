import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int weight = 40;
  int age = 15;
  bool isMale = true ;
  double height = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0C1234),
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xff0C1234),
        child: Column(
          children: [
           // section 1
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isMale?Color(0xffFF0067) : Color(0xff282C4F),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ 
                            Image(
                              image: AssetImage(
                                'asset/male.png',
                              
                              ),
                              height: 70, 
                              width: 70, 
                            ),
                            // Icon(
                            //   Icons.male,
                            //   size: 50,
                            //   color: Color(0xffFF0067),  
                            // ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isMale ?  Color(0xff282C4F) : Color(0xffFF0067),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Image(
                              image: AssetImage(
                                'asset/female.png',
                              ), 
                              height: 70,
                              width: 70,
                            ),
                            // Icon(
                            //   Icons.female,
                            //   size: 50,
                            //   color: Color(0xffFF0067),
                            // ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
           // section 2 
            Expanded(
                child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff282C4F),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    //SizedBox(
                    //  height: 15,
                  //  ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      thumbColor: Color(0xffFF0067),
                      activeColor: Color(0xffFF0067),
                      value: height,
                      min: 80,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                        print(value.round());
                      },
                    ),
                  ],
                ),
              ),
            )
            ),
           // section 3
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Color(0xff282C4F),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[300],
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag:'WEIGHT-',
                                  backgroundColor: Color(0xffFF0067),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(
                                   Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag:'WEIGHT+',
                                backgroundColor: Color(0xffFF0067),
                                   mini: true,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(
                                   Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Color(0xff282C4F),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[300],
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag:'AGE-',
                                  backgroundColor: Color(0xffFF0067),
                                  mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(
                                   Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag:'AGE+',
                                backgroundColor: Color(0xffFF0067),
                                   mini: true,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(
                                   Icons.add,
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
              ),
            ),
            // section 4
            Container(
              width: double.infinity,
              height: 60,
              color: Color(0xffFF0067),
              child: MaterialButton(
                onPressed: () {
                  var Result = weight / pow(height / 100, 2); 
                 // print('Result : ${Result.round()}');
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => BmiResult(
                        Age: age ,
                        Gender: isMale ,
                        Result:Result.round() ,
                      ) ,
                      ),
                    );
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
