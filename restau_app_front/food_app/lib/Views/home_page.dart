import 'package:flutter/material.dart';

import '../Components/produit_card.dart';
import '../utils/config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // backend list de produit

    config().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'Username',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                  SizedBox(
                      child: Icon(
                    Icons.food_bank_outlined,
                    color: Colors.red,
                    size: 30,
                  )),
                ],
              ),
              config.spaceMedium,
              // list produit
              const Text(
                'Menu',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              config.spaceSmall,
              // liist de produit
              Column(
                  children: List.generate(10, (index) {
                return const ProduitCard();
              }))
                      ],
                    ),
            )),
      ),
    );
  }
}
