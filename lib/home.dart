// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flowwerminiproject/drawer.dart';
import 'package:flowwerminiproject/flower/product.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flower By เกมส์เอง'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade200),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  Text('Search Here...')
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Product(
                      urlImage:
                          'https://inandcoseeds.com/wp-content/uploads/2020/08/Marigold-CutYellow-1.jpg',
                      name: 'ดอกดาวเรือง',
                      price: '30 บาท',
                    ),
                    Product(
                      urlImage:
                          'https://image.makewebeasy.net/makeweb/0/jJyefkQ4q/MarigoldFrench/MAR721_Bee.jpg',
                      name: 'ดอกดาวเรือง',
                      price: '50 บาท',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Product(
                      urlImage:
                          'https://i.pinimg.com/736x/81/64/cb/8164cb37478220bf8da927d483c11010.jpg',
                      name: 'ดอกกุหลาบ',
                      price: '40 บาท',
                    ),
                    Product(
                      urlImage:
                          'https://images.pexels.com/photos/160916/flower-rose-colorful-petals-160916.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      name: 'ดอกกุหลาบ',
                      price: '30 บาท',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Product(
                      urlImage:
                          'http://t3.gstatic.com/images?q=tbn:ANd9GcRyz8UN3mKoIKVWTdMCRHZas7nQuO32aJHs3W0MKDKWZsqVG2pSpVge4XjYKoXTuisJEf6ZBQ',
                      name: 'ดอกทานตะวัน',
                      price: '25 บาท',
                    ),
                    Product(
                      urlImage: 'https://inwfile.com/s-fv/bwxton.jpg',
                      name: 'ดอกทานตะวัน',
                      price: '35 บาท',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
