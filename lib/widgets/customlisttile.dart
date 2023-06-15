import 'package:ecommerce_app/models/brandmodel.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/nike1.jpg',
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  'Nike Air Jordan',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const Text(
                  '14999',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
          )),
    );
  }
}
// ListTile(
//           title: Text(
//             'Nike AIr-Jordan',
//             style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
//           ),
//           leading: ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//                 child: Image.asset(
//               'assets/images/nike1.jpg',
//             )),
//           ),
//           subtitle: Text('16000'),
//         ),
