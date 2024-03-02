import 'package:flutter/material.dart';
import 'package:food_app/Components/panier_page.dart';


import '../Components/detailsproduit_page.dart';
import '../Components/stock_page.dart';
import '../Components/panier_page.dart';

class Produit extends StatefulWidget {
  const Produit({super.key});

  @override
  State<Produit> createState() => _ProduitState();
}

class _ProduitState extends State<Produit> with TickerProviderStateMixin {
  late TabController tabcontroler;

  @override
  void initState() {
    tabcontroler = TabController(length: 3, initialIndex: 0, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: TabBar(
                labelColor: Colors.red,
                unselectedLabelColor: Colors.white,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                controller: tabcontroler,
                tabs: const [
                  Tab(
                      child: Text(
                    'Produit',
                    style: TextStyle(
                       // color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    'Stock',
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    'Panier',
                    style: TextStyle(
                       // color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: tabcontroler,
              children:const<Widget>[
                DetailsProuit(),
                 Stock(),
               Panier(),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
