import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeCategoryCard extends StatefulWidget {
  const HomeCategoryCard({super.key});

  @override
  _HomeCategoryCard createState() => _HomeCategoryCard();
}

class _HomeCategoryCard extends State<HomeCategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Doctor curated health packages",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 2),
          const Text("Physical reports available",
              style: TextStyle(fontSize: 10, color: Colors.grey)),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              GridItemWidget(image: 'assets/images/diabetes.jpg', title: "Diabetes"),
              GridItemWidget(image: 'assets/images/heartpainLogo.jpg', title: "Heart Care"),
              GridItemWidget(image: 'assets/images/stomachcare.jpg', title: "Stomach Care"),
              GridItemWidget(image: 'assets/images/livercare.jpg', title: "Liver Care"),
              GridItemWidget(image: 'assets/images/jointcare.jpg', title: "Muscle Care"),
              GridItemWidget(image: 'assets/images/eyecare.jpg', title: "Eye Care"),
            ],
          ),
        ],
      ),
    );
  }
}

class GridItemWidget extends StatelessWidget {
  final String image;
  final String title;

  const GridItemWidget({
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image),
          width: 120,
          height: 80,
          fit: BoxFit.fill ,
        ),
        const SizedBox(height: 5),
        Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

      ],
    );
  }
}
