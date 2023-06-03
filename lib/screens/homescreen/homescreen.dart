import 'package:ecommerce_app/widgets/bestsellingwidget.dart';
import 'package:ecommerce_app/widgets/brands.dart';
import 'package:ecommerce_app/widgets/catogarywidget.dart';
import 'package:ecommerce_app/widgets/drawerwidget.dart';
import 'package:ecommerce_app/widgets/offercorousal.dart';
import 'package:ecommerce_app/widgets/shoeslistwidget.dart';
import 'package:flutter/material.dart';

import '../../widgets/customlisttile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('hello'),
      ),
      body: ListView(children: [
        SizedBox(
          height: size.height * 0.06,
          child: const CatogoriesWidget(),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        SizedBox(
          height: size.height * 0.3,
          child: const OffersList(),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Best Selling',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(height: 200, child: BestSelling())),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Brands',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        const Padding(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(height: 200, child: BrandsList())),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Trending',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const CustomListTile();
                  },
                ))),
      ]),
    );
  }
}
