import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              // Grc Logo
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.red,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.network(
                    'lib/grc.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Name and title
              Text('Global Reciprocal Colleges Profile', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87)),
              SizedBox(height: 8),

              // About Us card
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About Us!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
                    SizedBox(height: 15),
                    Text(
                      'With a dream of having a free education through reciprocation,'
                          'where everyone can have the opportunity to change their lives '
                          'through a very affordable tuition fee and even scholarship grants,'
                          'available not just for the youth but also for adults. Chairman Vicente Ongtenco'
                          'established the Global Reciprocal Colleges aiming to develop the youth to become responsible,'
                          'competent, and dedicated professionals. In its pursuit of social and economic amelioration,'
                          'on December 10, 2007, the Global Reciprocal Colleges was registered in the Security Exchange Commission (SEC),'
                          'and in partnership with the Motortrade Life And Livelihood Assistance Foundation, Inc. (MLALAF),'
                          'Global Reciprocal Colleges started a Technical Education and Skills Development Authority (TESDA)'
                          'courses but in due course of time, GRC finally pursued courses that will help it to be established as'
                          'a College institution. ',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700], height: 1.6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}