import 'package:flutter/material.dart';

import '../utils/config.dart';

class Stock extends StatefulWidget {
  const Stock({super.key});

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  final List<Map<String, String>> stock = [
    {"refproduit": "Bukali nyama", "price": "\$10", "quantite": "10"},
    // Ajoutez ici d'autres éléments provenant de votre base de données
  ];
  @override
  Widget build(BuildContext context) {
    config().init(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: stock.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        stock[index]["refproduit"]!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        stock[index]["price"]!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                        SizedBox(height: 2),
                      Text(
                        stock[index]["quantite"]!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  config.spaceSmall,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Delete',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                        ),
                      ),
                      IconButton(onPressed: (){
                         
                      }, icon:Icon(Icons.shopping_cart),color: Colors.redAccent,iconSize: 40,)
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 3),
            )
          ]
        ),
        child: FloatingActionButton(onPressed: () {  
        },
        child: Icon(Icons.add_circle_outline,size: 28,color: Colors.red,),
        backgroundColor: Colors.white,
        ),
       ),
    );
  }
}
