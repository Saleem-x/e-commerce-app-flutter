import 'package:ecommerce_app/api/functions/createuser.dart';
import 'package:ecommerce_app/models/itemtypes.dart';
import 'package:flutter/material.dart';

class CatogoriesWidget extends StatelessWidget {
  const CatogoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoetypes.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () async {},
            child: Container(
              height: 15,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  shoetypes[index],
                  style: const TextStyle(color: Colors.white),
                ),
              )),
            ),
          ),
        );
      },
    );
  }
}
