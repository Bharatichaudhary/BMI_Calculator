//import 'dart:ffi';

import "package:flutter/material.dart";
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "BMI Calculator",
  home: BMIApp()
));
class BMIApp extends StatefulWidget {
  const BMIApp({super.key});

  @override
  State<BMIApp> createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  int height=60;
  int weight=40;
  double data=0.0;
  String result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text("BMI Calculator"),
        centerTitle: true
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          data=(weight/(height*height))*703;
          if(data<=18.4){result="You are Underweight";}
          else if(data>18.4&&data<25.0){ result="You are Normal";}
          else if(data>=25.0&&data<40){ result="You are Overweight";}
          else if(data>=40){ result="You are Obese";}
          });
        },
      child: Text("GO"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.grey[400],
                margin: EdgeInsets.fromLTRB(10, 10, 5, 5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Height",style: TextStyle(fontSize: 20,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                      Text("(in inches)",style: TextStyle(fontSize: 20,color: Colors.grey[600]),),

                      SizedBox(height: 20,),
                      Text("$height", style: TextStyle(fontSize: 16,color: Colors.grey[100]),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: (){
                              setState(() {
                                height++;
                              });
                            }, 
                            child: Icon(Icons.add_circle,color: Colors.grey[100],)
                            ),
                          TextButton(
                            onPressed: (){
                              setState(() {
                                height--;
                              });
                            }, 
                            child: Icon(Icons.remove_circle,color: Colors.grey[100],)
                            )
                        ],
                      )
                    
                  ]),
                ),
              ),
               Card(
                color: Colors.grey[400],
                margin: EdgeInsets.fromLTRB(10, 10, 5, 5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Weight",style: TextStyle(fontSize: 20,color: Colors.grey[800],fontWeight: FontWeight.bold),),
                      Text("(in pounds)",style: TextStyle(fontSize: 20,color: Colors.grey[600]),),
                      SizedBox(height: 20,),
                      Text("$weight", style: TextStyle(fontSize: 16,color: Colors.grey[100]),),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            }, 
                            child: Icon(Icons.add_circle,color: Colors.grey[100],)
                            ),
                          TextButton(
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            }, 
                            child: Icon(Icons.remove_circle,color: Colors.grey[100],)
                            )
                        ],
                      )
                    
                  ]),
                ),
              ),
            ],
          ),
          Text("Your BMI value is $data",style: TextStyle(fontSize: 20,color: Colors.black),),
          SizedBox(height: 20,),
          Text("$result",style: TextStyle(fontSize: 20,color: Colors.black),),



        ],
      ),
    );
  }
}