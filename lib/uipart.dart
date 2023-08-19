


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final WelcomeController welcomeController = Get.put(WelcomeController());
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = 3;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,

        title: Center(child: Text("GetX Shopping ",)),
      ),
        body: Column(
          children: [
           Padding(padding: const EdgeInsets.all(6),
             child: Row(
               children: [
                 Expanded(
                     child: Text("ShopX",style: TextStyle(fontFamily: 'avenir',fontSize: 32,fontWeight:   FontWeight.w900
                     ),
             ),
                 ),
                 IconButton(onPressed: (){
                 }, icon: Icon(Icons.view_list_rounded),),

                 IconButton(onPressed: (){
                 }, icon: Icon(Icons.grid_view))
               ],



             ),

           ),
            Container(
              height: 700,
              width: 400,
            //color: Colors.grey,
            child:Column(
    children: [
    Expanded(
    child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // Adjust the number of columns as needed
    ),
   // itemCount: welcomeController.welcomeList.length,
      itemCount: 8,// Number of items in the grid
    itemBuilder: (BuildContext context, int index)
    {
    // Create your grid items here
    return GridTile(
    child: Card(
    child: Center(
    child: Text('Grid Item $index'),
    ),
    ),
    );
    },
    ),
    ),
    ],
    ),
    ),
    ] )
    );



  }
}
