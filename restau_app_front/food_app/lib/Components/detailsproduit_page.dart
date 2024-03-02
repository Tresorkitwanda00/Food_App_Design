import 'package:flutter/material.dart';
import 'package:food_app/utils/config.dart';

class DetailsProuit extends StatefulWidget {
  const DetailsProuit({Key? key}) : super(key: key);

  @override
  State<DetailsProuit> createState() => _DetailsProuitState();
}

class _DetailsProuitState extends State<DetailsProuit> {
  final List<Map<String, String>> produit = [
    {"designation": "Bukali nyama", "price": "\$10"},
    // Ajoutez ici d'autres éléments provenant de votre base de données
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: produit.length,
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
                        produit[index]["designation"]!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        produit[index]["price"]!,
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
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Delete',
                              
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,),
                                
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white70,
                            ),
                          )
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
        ),)
    );
  }
}
