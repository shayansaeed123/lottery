import 'package:flutter/material.dart';

import 'dart:math';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottery App"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  height: 150,
                  width: 220,
                  image: AssetImage('assets/img.png')
              ),
            ),
            SizedBox(height: 70,),
            Text('Winning Lottery Number is 5',),
            Container(
              margin: EdgeInsets.all(10),
              height: 250,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: x == 5 ?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.done_all,color: Colors.green,size: 40,),
                  SizedBox(height: 8,),
                  Text("Congratulation you have won the lottery, \n Your number is $x",textAlign: TextAlign.center,)
                ],
              )
              :Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline,color: Colors.red,size: 40,),
                  SizedBox(height: 8,),
                  Text("Better luck next time your number is $x \n try again",textAlign: TextAlign.center,)
                ],
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){
          x = random.nextInt(10);
          setState(() {

          });
        },
        child: Icon(Icons.ads_click_outlined),
      ),
    );
  }
}
