import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(
        'Kamusta ka 👨🏽‍🌾', 
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins', //Greeting Text
        )
      ),
    
      Container(
        child: SvgPicture.asset(
          'assets/icons/cart-shopping-svgrepo-com.svg',
        width: 20 //Cart Icon
        ),
      )
    ],
    );
  }
}