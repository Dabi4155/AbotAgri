// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget{
  const MainScreen ({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value){
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green.shade900,
          items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home-1-svgrepo-com.svg',
              width: 20,
              height: 20,
            ), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explore-svgrepo-com.svg',
              width: 20,
              height: 20,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shop-svgrepo-com.svg',
              width: 20,
              height: 20,
            ), 
            label: 'Store',
          ),
             BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search-svgrepo-com.svg',
              width: 20,
              height: 20,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart-shopping-svgrepo-com.svg',
              width: 20,
              height: 20,
            ), 
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/account-svgrepo-com.svg',
              width: 20,
              height: 20,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/message-square-lines-alt-svgrepo-com.svg',
              width: 20,
              height: 20,
            ),
            label: 'Messages',
          ),

      ]),
    );
  }
  
}