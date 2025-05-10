import 'package:flutter/material.dart';
import 'package:online_shop/pages/homepage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Shop',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
      ),
   
    routes: 
    {
      '/': (context) => HomePage(),
    
    },
    );
  }
}