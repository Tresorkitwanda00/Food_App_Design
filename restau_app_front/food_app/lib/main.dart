import 'package:flutter/material.dart';
import 'package:food_app/utils/config.dart';
import 'package:food_app/utils/main_layout.dart';

import 'Views/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorkey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // define themeData
    return MaterialApp(
      navigatorKey: navigatorkey,
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // pre-define theme
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Colors.white,
          border: config.OutlineBorder,
          focusedBorder: config.FocusOrder,
          errorBorder: config.errorBorder,
          enabledBorder: config.OutlineBorder,
          floatingLabelStyle: TextStyle(color:Colors.white),
          prefixIconColor: Colors.white,
        
        
        ),
        scaffoldBackgroundColor:Colors.black,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      routes: {
        "/": (context) => const AuthPage(),
        // home page after login
        'main':(context)=>const MainLayout(),
      },
    );
  }
}
