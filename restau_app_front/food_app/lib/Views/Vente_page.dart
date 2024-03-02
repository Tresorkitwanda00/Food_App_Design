import 'package:flutter/material.dart';

class Vente extends StatefulWidget {
  const Vente({super.key});

  @override
  State<Vente> createState() => _VenteState();
}

class _VenteState extends State<Vente> with SingleTickerProviderStateMixin {
  late TabController tabcontroler;

  void initState() {
    tabcontroler = TabController(length: 2, initialIndex: 0, vsync: this);
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
                    'Ventes',
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    'Paiements',
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
              children: [
                Container(),
                Container(),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
