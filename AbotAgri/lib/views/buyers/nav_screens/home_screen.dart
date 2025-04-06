

import 'package:flutter/material.dart';
import 'package:testapp1/views/buyers/nav_screens/widgets/Search_input_widget.dart.dart';
import 'package:testapp1/views/buyers/nav_screens/widgets/Welcome_text_widget%20copy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: Column(
        children: [
          WelcomeText(),
          
          Text(
            'Find your favorite products',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              color: Colors.grey, //Above SearchInputWidget Bar Text
            ),
          ),

          SizedBox(height: 5), // Space between the above text and search bar
          SearchInputWidget(),
        ],
      ),
    );
  }
}

