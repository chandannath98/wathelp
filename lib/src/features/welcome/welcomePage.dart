import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobpilot/src/features/homepage/views/homepage.dart';

class JobPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {Get.to(Homepage());},
        child: Icon(Icons.arrow_forward),
        backgroundColor: Color(0xff012d46),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                             child:   Image.asset(
                            'assets/images/identity/app_logo.png', // Replace with your asset path
                            width: 80,
                            height: 80,
                          ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
               
                  Expanded(
                    
                    child: Center(
                      
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40,bottom: 40),
                        child: Image.asset(
                          'assets/images/welcome.jpg', // Replace with your asset path
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 200),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find Your',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Dream Job',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffd6ad),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xffffd6ad),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Here!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Explore all the most exciting job roles based on your interest and study major.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
