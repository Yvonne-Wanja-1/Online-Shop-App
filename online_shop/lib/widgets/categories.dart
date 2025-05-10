import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,//means that the scroll direction is horizontal
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          for (int i =1; i<8; i++)
Container(
  margin: const EdgeInsets.symmetric(horizontal: 10),
  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Row(
    children: [
    Image.asset("images/$i.jpg",
    width: 40,
    height: 40,
    fit: BoxFit.cover,
    ),
    Text('Hats',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
      fontStyle: FontStyle.italic,
    ),
    ),
    ],
  ),
),
        ],
      ),
    );
  }
}