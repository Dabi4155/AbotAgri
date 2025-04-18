import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testapp1/views/buyers/auth/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application. 
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'italic-ChangaOne',

      ),
      home: RegisterScreen(),
    );
  }
}
// this is archama von dutch del mar. 
// this is 9 dash lined area