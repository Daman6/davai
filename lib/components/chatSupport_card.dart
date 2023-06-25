import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportModel {
  final String Image;
  final String title;

  SupportModel(this.Image, this.title);
}

List<SupportModel> imageList = [
  SupportModel('assets/images/supportlogo.png', "Call Us"),
  SupportModel('assets/images/whatsappLogo.png', "Whatsapp Us")
];

class ChatsSupportCardUi extends StatefulWidget {
  const ChatsSupportCardUi({super.key});

  @override
  State<ChatsSupportCardUi> createState() => _ChatsSupportCardUiState();
}

class _ChatsSupportCardUiState extends State<ChatsSupportCardUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CardsItemUi(imageList.first.title,imageList.first.Image,Colors.blue),
          CardsItemUi(imageList.last.title,imageList.last.Image,Colors.greenAccent),
        ],
      ),
    );
  }

  Widget CardsItemUi(String title,String imagePath,Color color) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 60,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imagePath),
              width: 20,
              height: 20,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
