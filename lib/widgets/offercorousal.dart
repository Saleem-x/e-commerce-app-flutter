import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OffersList extends StatelessWidget {
  const OffersList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Widget> imagelist = [
      Image.asset(
        'assets/images/nike1.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Image.asset(
        'assets/images/nike2.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Image.asset(
        'assets/images/nike3.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Image.asset(
        'assets/images/nike4.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    ];
    return CarouselSlider(
        items: imagelist,
        options: CarouselOptions(
            enlargeCenterPage: true,
            animateToClosest: true,
            autoPlay: true,
            height: size.height * 0.3));
  }
}
