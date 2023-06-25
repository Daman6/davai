import 'package:davai/carousel_slider/image_slider.dart';
import 'package:davai/components/PopularProducts_card.dart';
import 'package:davai/components/topSellingProducts_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/categories_card.dart';
import 'components/chatSupport_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black12,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFieldWidget(),
                ImageSlider(),
                const SizedBox(height: 5),
                const HomeCategoryCard(),
                const SizedBox(height: 5),
                const ChatsSupportCardUi(),
                const SizedBox(height: 5),
                const TopSellingProductCard(),
                const SizedBox(height: 5),
                const PopularProductCard(),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ));
  }
}

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 50,
        margin: EdgeInsets.all(10),
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1)
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Search for medicine and health products",style:TextStyle(fontSize: 15, color: Colors.grey,)),
            Icon(Icons.search_outlined, color: Colors.grey, size: 30),
          ],
        ),
      ),
    );
  }
}
