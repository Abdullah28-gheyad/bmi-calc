import 'dart:ffi';

import 'package:bmi_calculater/modules/bmi_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  double result;
  String textresult1;
  String textresult2;
  ResultScreen({@required this.result});
  @override
  Widget build(BuildContext context) {
    if (result>=18.5&&result<=24.9)
      {
        textresult1='Ideal Weight' ;
        textresult2 = 'Your weight is Perfect' ;
      }
    else if (result>24.9)
      {
        textresult1='over Weight' ;
        textresult2 = 'You need to do more exercise' ;
      }
    else
      {
        textresult1='less Weight' ;
        textresult2 = 'You need to eat more' ;
      }
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar:AppBar(
        leading: IconButton(
          onPressed: (){
                    Navigator.pop(context) ;
          },
          icon: Icon(Icons.arrow_back , color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Result',style: TextStyle(color: Colors.white , fontSize: 30.0 , fontWeight: FontWeight.bold),) ,
                      SizedBox(height: 30.0,) ,
                      Text('$textresult1',style: TextStyle(color: Colors.black , fontSize: 30.0 , fontWeight: FontWeight.bold),) ,
                      SizedBox(height: 30.0,) ,
                      Text('${result.round()}',style: TextStyle(color: Colors.white , fontSize: 30.0 , fontWeight: FontWeight.bold),) ,
                      SizedBox(height: 30.0,) ,
                      Text('$textresult2',style: TextStyle(color: Colors.white , fontSize: 20.0 , fontWeight: FontWeight.bold),) ,
                    ],
                  ),
                ),
              ),
            ),
            Container
              (
              width: double.infinity,
                color: Colors.pink,
                child: MaterialButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiScreen(),
                      ));
                },child: Text('Re-Calculate' , style: TextStyle(color: Colors.white),),))
          ],
        ),
      ),
    );
  }
}
