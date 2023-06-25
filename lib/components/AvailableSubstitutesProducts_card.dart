import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvailableSubstitutesProductCard extends StatefulWidget {
  const AvailableSubstitutesProductCard({super.key});

  @override
  State<AvailableSubstitutesProductCard> createState() => _AvailableSubstitutesProductCardState();
}

class _AvailableSubstitutesProductCardState extends State<AvailableSubstitutesProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            productCardDetailTopUi(),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  productUi(),
                  productUi(),
                  productUi(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
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
        "Available Substitutes",
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

Widget productUi() {
  return Container(
    height: 190,
    width: 150,
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: NetworkImage(
              "https://img.freepik.com/premium-vector/customer-support-service-chat-icons-call-center-logo-hotline-concept-vector-illustration_476325-753.jpg?w=826"),
          width: double.infinity,
          height: 100,
        ),
        SizedBox(height: 4),
        Divider(
          color: Colors.grey,
          height: 1,
          thickness: 1,
          indent: 10,
          endIndent: 10, // Set the end indent (right margin) of the divider
        ),
        SizedBox(height: 4),
        Text(
          "Vildasmart 50mg",
          style: TextStyle(fontSize: 14, color: Colors.black),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 5),
        Text(
          "65% OFF",
          style: TextStyle(fontSize: 10, color: Colors.green),
        ),
        Row(
          children: [
            Text(
              "Rs 70.00",
              style: TextStyle(fontSize: 12, color: Colors.deepOrangeAccent),
            ),
            SizedBox(width: 5,),
            Text("Rs 199.00",
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
