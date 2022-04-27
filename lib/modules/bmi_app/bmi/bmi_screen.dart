import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../bmi_result/bmi_result_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height=160;
  double weight=75;
  int age=20;
  var color = Colors.grey[400];
  bool isMale=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#141414"),
      appBar: AppBar(
        backgroundColor: HexColor("#141414"),
        title: const Center(
          child: Text(
            'BMI Calculator',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 90,
                              width: 90,
                            ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          decoration:BoxDecoration(
                            color:  isMale? color=Colors.blue: /*color=Colors.grey[400]*/HexColor("#3d3d3d"),
                            borderRadius: BorderRadius.circular(10),
                          ) ,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;

                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 90,
                                width: 90,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:  !isMale? color=Colors.blue: /*color=Colors.grey[400]*/HexColor("#3d3d3d"),
                          ) ,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                              '${height.round()}',
                            style: const TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          const Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 280,
                        min: 80,
                        onChanged: (value){
                          setState(() {
                            height=value;
                          });
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: /*Colors.grey[400],*/
                    HexColor("#3d3d3d"),
                  ),

                ),
              ),
          ),
          Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'WEIGHT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Text(
                                '${weight.round()}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 35,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'weight-',
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: const Icon(Icons.remove),
                                  mini: true,),
                                  const SizedBox(width: 5,),
                                  FloatingActionButton(
                                    heroTag: 'weight+',

                                    onPressed: (){
                                      setState(() {
                                        weight++;

                                      });
                                    },
                                    child: const Icon(Icons.add),mini: true,),
                                ],
                              ),
                            ],
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: /*Colors.grey[400]*/HexColor("#3d3d3d"),

                          ) ,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'AGE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Text(
                                '$age',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 35,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'age-',
                                    onPressed: (){
                                      setState(() {
                                        age--;

                                      });
                                    },
                                  child: const Icon(Icons.remove),mini: true,),
                                  const SizedBox(width: 5,),
                                  FloatingActionButton(
                                    heroTag: 'age+',

                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const Icon(Icons.add),mini: true,),
                                ],
                              ),
                            ],
                          ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: /*Colors.grey[400]*/HexColor("#3d3d3d"),
                          ) ,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
              color:  HexColor("#525252"),
              borderRadius: BorderRadius.circular(15),
            ),
            child: MaterialButton(
              onPressed: ()
              {
                var result= weight / pow(height/100, 2);
                String gender;
                isMale? gender='Male':gender='Female';
                if (kDebugMode) {
                  print(result.round());
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>BmiResultScreen(age: age,isMale: isMale,result: result,gender: gender),
                  ),
                );
              },child: const Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ),
          ),
        ],
      ),
    );
  }
}
