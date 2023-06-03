import 'package:ecommerce_app/widgets/customlisttile.dart';
import 'package:flutter/material.dart';

class ShoesList extends StatelessWidget {
  const ShoesList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) => CustomListTile()),
    );
  }
}
