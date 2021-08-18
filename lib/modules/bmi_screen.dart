import 'package:bmi_calculater/modules/result.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {


  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  Color color1=Colors.blue ;
  Color color2=Colors.blue ;


  int value = 100 ;
  int wight = 60 ;
  int age = 20 ;
  double result = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {

                          });
                          color1=Colors.black ;
                          color2=Colors.white ;
                        },
                        child: Container(
                          color: color1,
                          height: 200,
                          child: Image(image: AssetImage('assets/male.png') ,height: 100,width: 100,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,) ,
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {

                          });
                          color1=Colors.white ;
                          color2=Colors.black;
                        },
                        child: Container(
                          color: color2,
                          height: 200,
                          child: Image(image: AssetImage('assets/female.png') ,height: 100,width: 100,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ) ,
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(value.toString(),style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 50.0),),
                          Text('cm',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 15.0),),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ) ,
                      Slider
                        (
                          value: value.toDouble(),
                          max: 220,
                          min: 60,
                          activeColor: Colors.white,
                          onChanged: (myvalue){
                            setState(() {

                            });
                            value = myvalue.toInt() ;
                          }) ,
                      SizedBox(height: 20.0,) ,
                      Text('Height',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 40.0),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ) ,
              SizedBox(height: 10.0,),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text('Weight',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 40),),
                            SizedBox(height: 10.0,) ,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(wight.toString(),style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 40),),
                                Text('kg',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20),),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.lightBlueAccent,
                                  child: IconButton
                                    (
                                      icon: Icon(Icons.add),
                                      onPressed: (){
                                        setState(() {

                                        });
                                        wight++;
                                      } ,
                                    color: Colors.white,
                                  ),
                                ) ,
                                SizedBox(width: 10.0,) ,
                                CircleAvatar(
                                  backgroundColor: Colors.lightBlueAccent,
                                  child: IconButton
                                    (
                                      icon: Icon(Icons.remove),
                                      color: Colors.white,
                                      onPressed: (){
                                        setState(() {

                                        });
                                        wight--;
                                      }
                                  ),
                                ),
                              ],
                            ) ,
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,) ,
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text('Age',style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 40),),
                            SizedBox(height: 10.0,) ,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(age.toString(),style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 40),),
                              ],
                            ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    CircleAvatar(
                                    backgroundColor: Colors.lightBlueAccent,
                                    child: IconButton
                                    (
                                    icon: Icon(Icons.add),
                                    onPressed: (){
                                      setState(() {

                                      });
                                      age++;
                                    } ,
                                    color: Colors.white,
                                    ),
                                    ) ,
                                    SizedBox(width: 10.0,) ,
                                    CircleAvatar(
                                    backgroundColor: Colors.lightBlueAccent,
                                    child: IconButton
                                    (
                                    icon: Icon(Icons.remove),
                                    color: Colors.white,
                                    onPressed: (){
                                      setState(() {

                                      });
                                      age--;
                                    }
                                    ),
                                    ),
                                    ],
                                    ) ,
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ) ,
              SizedBox(height: 20.0,) ,
              Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.pink,
                  child: MaterialButton(onPressed: (){
                    result = (wight.toDouble())/((value/100)*(value/100)) ;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultScreen(result: result,),
                        ));
                  } ,child: Text('Calculate' ,style: TextStyle(color: Colors.white),),))
            ],
          ),
        ),
      ),
    );
  }
}
