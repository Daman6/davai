import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Cart",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/welcome');
          },
          child: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AddToCartItemUi(),
              SizedBox(height: 5,),
              bottomUi()
            ]
        ),
      ),
    );
  }

  Widget AddToCartItemUi() {
    int value = 0;

    void increment() {
      setState(() {
        value++;
      });
    }

    void decrement() {
      if (value > 0) {
        setState(() {
          value--;
        });
      }
    }

    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                "Items requiring prescription",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vildasmart 50mg",
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Rs 70.00",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Text("Rs 199.00",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough)),
                      SizedBox(width: 8),
                      Text(
                        "65% OFF",
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Type : Tablets",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Mfg : Healing Pharma India Pvt Ltd",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Material(
                            elevation: 4,
                            shape: CircleBorder(),
                            child: GestureDetector(
                              onTap: decrement,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.deepOrangeAccent),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.deepOrangeAccent,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              value.toString(),
                              style: const TextStyle(
                                  fontSize: 22, color: Colors.grey),
                            ),
                          ),
                          Material(
                            elevation: 4,
                            shape: const CircleBorder(),
                            child: GestureDetector(
                              onTap: increment,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.deepOrangeAccent),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.deepOrangeAccent,
                                  size: 15,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete_outline),
                        iconSize: 30,
                        color: Colors.deepOrangeAccent,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget PlaceOrderBtn(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Card(
        color: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Total\nRs 70.00",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  VerticalDivider(
                    width: 1,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                    color: Colors.white54,
                  ),
                ],
              ),

              Row(
                children: [
                  Text("PLACE ORDER",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward,color: Colors.white,size: 20,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget MRPCalculator(){
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.14,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("MRP",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400)),
              Text("Rs 199.00",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price Discount",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400)),
              Text("Rs 129.00",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400))
            ],
          ),
          SizedBox(height: 5,),
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 1
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Payable",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400)),
              Text("Rs 70.00",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold))
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomUi(){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          MRPCalculator(),
          SizedBox(height: 5,),
          PlaceOrderBtn(),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}
