import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Search',
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.clear))),
          ),
        ),
      ]),
    );
  }
}
