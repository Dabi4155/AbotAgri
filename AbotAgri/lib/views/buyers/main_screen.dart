// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp1/views/buyers/nav_screens/account_screen.dart';
import 'package:testapp1/views/buyers/nav_screens/cart_screen.dart';
import 'package:testapp1/views/buyers/nav_screens/category_screen.dart';
import 'package:testapp1/views/buyers/nav_screens/home_screen.dart';
import 'package:testapp1/views/buyers/nav_screens/message_screen.dart';
import 'package:testapp1/views/buyers/nav_screens/search_screen.dart';
import 'package:testapp1/views/buyers/nav_screens/store_screen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen ({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    SearchScreen(),
    AccountScreen(),
    StoreScreen(),
    MessageScreen(), // Add screens here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _pageIndex,
          onTap: (value){
            setState(() {
              _pageIndex = value; // Update the page index when a new tab is tapped
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green.shade900,
          items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home-1-svgrepo-com.svg',
              width: 20,
              height: 20, // Home Icon
            ), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explore-svgrepo-com.svg',
              width: 20,
              height: 20, // Category Icon
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shop-svgrepo-com.svg',
              width: 20,
              height: 20, // Store Icon
            ), 
            label: 'Store',
          ),
             BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search-svgrepo-com.svg',
              width: 20,
              height: 20, // Search Icon
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart-shopping-svgrepo-com.svg',
              width: 20,
              height: 20, // Cart Icon
            ), 
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/account-svgrepo-com.svg',
              width: 20,
              height: 20, // Profile Icon
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/message-square-lines-alt-svgrepo-com.svg',
              width: 20,
              height: 20, // Messages Icon
            ),
            label: 'Messages',
          ),
      ],
      ),

      body: _pages[_pageIndex], // Display the selected page based on the current index
    );
  }

}