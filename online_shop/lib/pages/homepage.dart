import 'package:flutter/material.dart';
import 'package:online_shop/widgets/categories.dart';
import 'package:online_shop/widgets/homeappbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            height: 500,
            width: double.infinity,
            padding: const EdgeInsets.only(top:15),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),  
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  margin:  EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                 child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 50,
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),

                    ),
                    Spacer(),
                    Icon(
                      Icons.camera_alt,
                      color: Colors.blue,
                      size: 30,
                    )
                  ],
                 )
                ),
               
               Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
               ),

               //categories
               CategoriesWidget(),
               
              ],
            ),
          )
        ],
      ),
    );
  }
}