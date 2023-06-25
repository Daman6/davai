import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget{
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return const Scaffold(
        body: Center(child: Text("Offer",style: TextStyle(fontSize: 40))),
      );
    }

}