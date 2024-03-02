import 'package:flutter/material.dart';
import 'package:food_app/utils/config.dart';

class ProduitCard extends StatefulWidget {
  const ProduitCard({super.key});

  @override
  State<ProduitCard> createState() => _ProduitCardState();
}

class _ProduitCardState extends State<ProduitCard> {
  @override
  Widget build(BuildContext context) {
    config().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      height: 150,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
            children: [
             SizedBox(
                height: config.heightSize*0.2,
                width: config.widthSize * 0.4,
                child: Image.asset(
                  'images/istockphoto-617364554-612x612.jpg',
                  fit: BoxFit.fill,
                
                ), //backend
              ),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Humberger',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const Text(
                      '\$10',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    
                  ],
                ),
              )),
            ],
          ),
        ),
        onTap: (){},
      ),
    );
    // child: Material(
    //   color: Colors.transparent,
    //   child: Padding(
    //     padding: EdgeInsets.all(20),
    //     child: Column(
    //       children:  <Widget> [
    //         Row(
    //           children: [
    //             const CircleAvatar(
    //           radius: 35,
    //           backgroundImage: AssetImage('images/istockphoto-617364554-612x612.jpg'), //backend recuperer image du produit
    //         ),
    //         const SizedBox(width: 10,),
    //         Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             Text('Humberger',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 24),),
    //            const SizedBox(
    //             height:2 ,
    //             ),
    //             Text('\$ 10',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 24),),
    //           ],
    //         )
    //           ],
    //         ),
    //         config.spaceSmall,
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Expanded(
    //               child: ElevatedButton(
    //                 onPressed: (){},
    //                 child: const Text('show details',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
    //                 style: ElevatedButton.styleFrom(
    //                   backgroundColor: Colors.white70,
    //                 ),
    //               )
    //               )
    //           ],
    //         )
    //       ],
    //     ),
    //   ),
    // )
  }
}
