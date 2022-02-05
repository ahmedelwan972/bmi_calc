import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class BMIResult extends StatelessWidget {
  bool isMale ;
  int result;
  int age;
  BMIResult({
    required this.isMale,
    required this.result,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
            onPressed: (){
              Navigator.pop(context);
            }
        , icon: Icon(Icons.arrow_back_ios)),

        title: Center(child: Text('BMI Result', style: TextStyle(color: Colors.white),)),
        backgroundColor: HexColor('#070323'),
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor('#070323'),
            statusBarIconBrightness: Brightness.light
        ),

      ),
      body: Container(
        decoration: BoxDecoration(color: HexColor('#070323')),

        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender:${isMale ?'Male':'female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white
              ),
            ),
            Text(
              'Result:$result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                  color: Colors.white

              ),
            ),
            Text(
              'Age:$age',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                  color: Colors.white


              ),
            ),
          ],
        ),
      ),
    );
  }
}
