import 'package:flutter/material.dart';
import 'package:uasapp/login.dart';
import 'package:uasapp/screens/dashboard/dashboard_screen.dart';
 

class Welcome extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: SafeArea(
          child:Container(
            width:  double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "LOOCALCO",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome to mobile app, pada aplikasi ini terdapat beberapa fitur. Seperti dashboard yang menggunakan cardview dan listview, todolist yang tehubung dengan firebase, dll.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:  Colors.grey[700],
                        fontSize: 15, 
                      ),)
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/mky.png") 
                    )
                  ),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                )
                
              ],
            ),
            ),       
          ),
          );
        }
    }
