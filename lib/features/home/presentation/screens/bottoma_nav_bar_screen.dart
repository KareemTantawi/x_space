import 'package:flutter/material.dart';
import 'package:x_space/features/category/presentation/category_screen.dart';
import 'package:x_space/features/favourite/presentation/favourite_screen.dart';
import 'package:x_space/features/home/presentation/screens/home_screen.dart';
import 'package:x_space/features/profile/presentation/profile_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  final List screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        // selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 28,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_rounded,
              size: 28,
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 28,
            ),
            label: 'Favorite',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.shopping_cart,
          //     size: 23,
          //   ),
          //   label: 'Cart',
          // ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 28,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
