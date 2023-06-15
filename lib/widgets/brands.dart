import 'package:ecommerce_app/api/functions/getbrands.dart';
import 'package:ecommerce_app/bloc/brands/brands_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandsList extends StatelessWidget {
  const BrandsList({super.key});

  @override
  Widget build(BuildContext context) {
    getbrands(context);
    return BlocBuilder<BrandsBloc, BrandsState>(
      builder: (context, state) {
        return state.brands.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: state.brands.length,
                itemBuilder: (context, index) {
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
                                  offset: const Offset(0, 3))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    state.brands[index].image!,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Text(
                                state.brands[index].name!,
                                style: const TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  );
                },
              );
      },
    );
  }
}
