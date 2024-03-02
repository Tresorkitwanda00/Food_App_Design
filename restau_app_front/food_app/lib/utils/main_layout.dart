import 'package:flutter/material.dart';
import 'package:food_app/Views/Vente_page.dart';
import 'package:food_app/Views/home_page.dart';

import '../Views/client_page.dart';
import '../Views/produit_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: (value) {
          setState(() {
            // udpdate tabs index on switch
            currentPage = value;
          });
        },
        children: const <Widget>[
          HomePage(),
          Produit(),
          Client(),
          Vente(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
      
        currentIndex: currentPage,
        onTap: (page) {
          setState(() {
            currentPage = page;
            _page.animateToPage(page,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          });
        },
        items:const<BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank,
            color: Colors.white,),
            
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.white,),
            label: 'Client',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_outlined,color: Colors.white,),
            label: 'ventes',
          )
        ],
      ),
    );
  }
}
