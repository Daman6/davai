import 'dart:ffi';

import 'package:davai/carousel_slider/product_Image_slider.dart';
import 'package:davai/components/AvailableSubstitutesProducts_card.dart';
import 'package:davai/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProductScreen extends StatefulWidget {

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/welcome');
            },
            child: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
          ),
          backgroundColor: Colors.deepOrangeAccent,
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 20,
              ), onPressed: () {  },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/cartload');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuantityManagementUi(),
              SizedBox(height: 5),
              AvailableSubstitutesProductCard(),
              SizedBox(height: 5),
              Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Information",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 1,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Uses / Indications: Type 2 diabetes mellitus\n\nPregnancy interaction: VILDASMART 50 is not recommended for use in pregnant women unless necessary. Discuss the risks and benefits with your doctor.\n\nSide Effects: Angioedema (swollen face, tongue or throat, difficulty in swallowing, difficulty in breathing, sudden onset rash or hives) Symptoms of hepatitis (yellow skin and eyes, nausea, loss of appetite or dark-colored urine) Pancreatitis (inflammation of pancreas)Trembling Headache, dizziness Nausea Weakness Weight increase Swollen hands, ankle or feet Excessive sweating Chills Heartburn.\n\nHow to use: Take this medicine as directed by your physician. Swallow the medicine as whole with a glass of water. Do not crush or chew the medicine. Your doctor will decide the correct dose for you depending upon your condition. Continue to take this medicine, as long as your doctor tells you to do so, to obtain better results.\n\nHow it works: VILDASMART 50 works by increasing the release of insulin from the pancreas and decreasing the hormones that raise blood sugar levels. This reduce the fasting and post meal sugar level.",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}

class QuantityManagementUi extends StatefulWidget {

  @override
  State<QuantityManagementUi> createState() => _QuantityManagementUiState();
}

class _QuantityManagementUiState extends State<QuantityManagementUi> {

  final Product product = Product("Vildasmart 50mg","70.00",0,"sd","Healing Pharma India Pvt Ltd",[
    Images('assets/images/medicineImage.jpeg')
  ]);


  int value = 0 ;

  void increment(){
    setState(() {
      value++;
    });
  }

  void decrement(){
    if(value>0){
      setState(() {
        value--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ProductImagesSlider(),
           Text(
           product.name,
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            "Mfg : ${product.manufacturer}",
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Rs ${product.price.toString()}",
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "65% OFF",
                    style:
                    TextStyle(fontSize: 14, color: Colors.lightGreenAccent),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Rs 199.00",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Material(
                    elevation: 4,
                    shape: const CircleBorder(),
                    child: GestureDetector(
                      onTap: decrement,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.deepOrangeAccent),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.deepOrangeAccent,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      value.toString(),
                      style: const TextStyle(fontSize: 22, color: Colors.grey),
                    ),
                  ),
                  Material(
                    elevation: 4,
                    shape: const CircleBorder(),
                    child: GestureDetector(
                      onTap: increment,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.deepOrangeAccent),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.deepOrangeAccent,
                          size: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text("ADD TO CART",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              )
            ],
          )
        ],
      ),
    );
  }
}
