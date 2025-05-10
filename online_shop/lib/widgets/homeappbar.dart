import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            color: const Color.fromARGB(255, 5, 90, 160),
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),

           Text(
            'Yvonne\'s Shop',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 5, 90, 160),
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.wavy,
              fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 5, 90, 160),
            ),
          ),

          const Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: Text(
              '3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            child: InkWell(
              onTap: () {
                // Navigate to the cart page
              },
              child: Icon(
                Icons.shopping_cart,
                color: const Color.fromARGB(255, 5, 90, 160),
                size: 30,
              ),
            ),
          )
        ],
      ),
      
      
    );
  }
}