import 'package:flutter/material.dart';
import 'package:menu_app/models/res.dart';
import 'package:menu_app/widgets/res_Card.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: FoodAssets.all.length,
        itemBuilder: (context, index) {
          String assetPath = FoodAssets.all[index];
          String title = indexToDishName(index);
          return ResCard(assetPath: assetPath, title: title);
        },
      ),
    );
  }
}

String indexToDishName(int index) {
  switch (index) {
    case 0:
      return 'Pasta';
    case 1:
      return 'Burger';
    case 2:
      return 'Sushi';
    case 3:
      return 'Pizza';
    case 4:
      return 'Biryani';
    default:
      return 'Unknown';
  }
}
