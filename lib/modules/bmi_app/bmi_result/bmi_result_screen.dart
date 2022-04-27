import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class BmiResultScreen extends StatelessWidget {

 final double? result;
 final String? gender;
 final int? age;
 final bool? isMale;

  const BmiResultScreen(
 {Key? key,
   @required this.age,
   @required this.isMale,
   @required this.result,
   @required this.gender,
 }
     ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#141414"),
      appBar: AppBar(
        backgroundColor: HexColor("#141414"),
        title: const Center(
          child: Text(
            'BMI Result',
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 350,
          width: 300,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: /*HexColor("#ababab")*/HexColor("#3d3d3d"),
          ) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender: $gender ',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Result: ${result?.round()}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Age: $age',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
