// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String urlImage;
  final String name;
  final String price;
  const Product(
      {super.key,
      required this.urlImage,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        padding: EdgeInsets.all(8),
        color: Colors.grey.shade200,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  urlImage,
                  width: 250,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,
                        style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('ราคา ${price}',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                  ],
                ),
                Center(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text('สั่งซื้อ',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
