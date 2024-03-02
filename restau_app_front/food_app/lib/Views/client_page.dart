import 'package:flutter/material.dart';

import '../Components/client_page.dart';
import '../Components/detailsPanier_page.dart';

class Client extends StatefulWidget {
  const Client({super.key});

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> with TickerProviderStateMixin {
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
                    'Clients',
                    style: TextStyle(
                        // color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    'Details Panier',
                    style: TextStyle(
                        //color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: tabcontroler,
              children: const <Widget>[
                ClientItems(),
                Dpanier(),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
