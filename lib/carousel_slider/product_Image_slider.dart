import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


List<String> imageList = [
  'assets/images/medicineImage.jpeg',
];

class ProductImagesSlider extends StatefulWidget {

  @override
  _ProductImagesSliderState createState() => _ProductImagesSliderState();
}


class _ProductImagesSliderState extends State<ProductImagesSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider(
            items: imageList.map((String assetPath) {
              return Builder(
                builder: (BuildContext context) {
                  return Image(
                    image: AssetImage(assetPath),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                }
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList.map((String imageUrl) {
              int index = imageList.indexOf(imageUrl);
              return Container(
                width: 5,
                height: 5,
                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.deepOrangeAccent : Colors.black54,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
