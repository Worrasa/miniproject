// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flowwerminiproject/home.dart';
import 'package:flowwerminiproject/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF64B5F6),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: Text(
              'Flower By เกมส์เอง',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Get.to(MyHomePage());
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Get.to(LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
