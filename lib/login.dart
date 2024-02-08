// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_final_fields

import 'package:animate_do/animate_do.dart';
import 'package:flowwerminiproject/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text('Flower By เกมส์เอง',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              FadeInUp(
                  duration: Duration(milliseconds: 1800),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Color.fromRGBO(143, 148, 251, 1)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color:
                                          Color.fromRGBO(143, 148, 251, 1)))),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "User",
                                hintStyle: TextStyle(color: Colors.grey[700])),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[700])),
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(241, 195, 228, 1),
                          Color.fromRGBO(143, 148, 251, .6),
                        ])),
                    child: Center(
                      child: InkWell(
                        onTap: () => Get.to(MyHomePage()),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 70,
              ),
              FadeInUp(
                  duration: Duration(milliseconds: 2000),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
