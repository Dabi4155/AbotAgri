

import 'package:flutter/material.dart';
import 'package:testapp1/views/buyers/nav_screens/widgets/Search_input_widget.dart.dart';
import 'package:testapp1/views/buyers/nav_screens/widgets/Welcome_text_widget%20copy.dart';
import 'package:testapp1/views/buyers/nav_screens/widgets/banner_widget.dart';
import 'package:testapp1/views/buyers/nav_screens/widgets/category_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeText(),
        SizedBox(
          height: 14,
        ),
        SearchInputWidget(),
        BannerWidget(),
        CategoryText(),
      ],
    );
  }
}

