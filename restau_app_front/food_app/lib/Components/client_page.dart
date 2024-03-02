import 'package:flutter/material.dart';

import '../utils/config.dart';

class ClientItems extends StatefulWidget {
  const ClientItems({super.key});

  @override
  State<ClientItems> createState() => _ClientItemsState();
}

class _ClientItemsState extends State<ClientItems> {
  final List<Map<String, String>> client = [
  {
    'noms':'Koko Katoro Moise',
    'contact':'0971268803',
  }
  ];
  @override
  Widget build(BuildContext context) {
    config().init(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: client.length,
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
                        client[index]["noms"]!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        client[index]["contact"]!,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  config.spaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Commander',
                          style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
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
                          'Edit',
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
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
                            fontSize: 15,
                          ),
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
