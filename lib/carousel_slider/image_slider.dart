import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


List<String> imageList = [
  'assets/images/offer1.jpeg',
  'assets/images/offer2.jpg',
  'assets/images/offer3.jpg',
];

class ImageSlider extends StatefulWidget {

  @override
  _ImageSliderState createState() => _ImageSliderState();
}


class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider(
            items: imageList.map((String assetPath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      assetPath,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
                height: 140.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 4000),
                viewportFraction: 0.8,
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
                width: _currentIndex == index ? 15 : 10,
                height: 5,
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(4),
                  color: _currentIndex == index ? Colors.black : Colors.black54,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
