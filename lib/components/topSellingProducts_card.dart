import 'package:davai/models/product_model.dart';
import 'package:davai/product_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopSellingProductCard extends StatefulWidget {
  const TopSellingProductCard({super.key});

  @override
  State<TopSellingProductCard> createState() => _TopSellingProductCardState();
}

class _TopSellingProductCardState extends State<TopSellingProductCard> {


  final List<Product> productList = [
    Product("Vildasmart 50mg","70.00",0,"sd","Healing Pharma India Pvt Ltd",[
      Images('assets/images/medicineImage.jpeg')
    ]),
    Product("Vildasmart 50mg","70.00",0,"sd","Healing Pharma India Pvt Ltd",[
      Images('assets/images/medicineImage.jpeg')
    ]),
    Product("Vildasmart 50mg","70.00",0,"sd","Healing Pharma India Pvt Ltd",[
      Images('assets/images/medicineImage.jpeg')
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productCardDetailTopUi(),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: productList.map((product) {
                    return GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductScreen(),
                            ),
                          );                        },
                        child: productUi(product)
                    );
                }).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget productUi(Product product) {
  return Container(
    height: 190,
    width: 150,
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(product.images.first.image),
          width: double.infinity,
          height: 100,
        ),
        SizedBox(height: 4),
        const Divider(
          color: Colors.grey,
          height: 1,
          thickness: 1,
          indent: 10,
          endIndent: 10,
        ),
        const SizedBox(height: 4),
        Text(
          product.name,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 5),
        const Text(
          "65% OFF",
          style: TextStyle(fontSize: 10, color: Colors.green),
        ),
        Row(
          children: [
            Text(
              "Rs ${product.price}",
              style: const TextStyle(fontSize: 12, color: Colors.deepOrangeAccent),
            ),
            SizedBox(width: 5,),
            const Text("Rs 199.00",
                style: TextStyle(
                    fontSize: 9,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough)),
          ],
        ),
      ],
    ),
  );
}

Widget productCardDetailTopUi() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "EXPLORE",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
          seeAllUi()
        ],
      ),
      const Text(
        "TOP SELLING PRODUCTS",
        style: TextStyle(
            fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget seeAllUi() {
  return const Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        "SEE ALL",
        style: TextStyle(
            fontSize: 14,
            color: Colors.deepOrangeAccent,
            fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 4),
      Icon(
        Icons.keyboard_arrow_right_sharp,
        color: Colors.deepOrangeAccent,
      ),
      // Replace 'add' with the desired icon
    ],
  );
}


