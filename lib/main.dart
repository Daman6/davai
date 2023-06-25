import 'package:davai/account_Screen.dart';
import 'package:davai/addToCart_screen.dart';
import 'package:davai/product_Screen.dart';
import 'package:davai/splash_Screen.dart';
import 'package:davai/home_Screen.dart';
import 'package:davai/offer_Screen.dart';
import 'package:flutter/material.dart';

import 'carousel_slider/image_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SplashScreen(),
        '/welcome' : (context) =>  MyHomePage(),
        '/product' : (context) =>  ProductScreen(),
        '/cartload' : (context) =>  AddToCartScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  int bottomNavIndex = 0;
  List<Widget> widgetList = const [
    HomeScreen(),
    AccountScreen(),
    OfferScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[bottomNavIndex],
      ),
      appBar: AppBar(
        title: Text("Daman",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        leading: const Icon(Icons.person_pin,color: Colors.white,size: 30,),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepOrangeAccent,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        onTap: (index){
          setState(() {
            bottomNavIndex = index;
          });
        },
        currentIndex: bottomNavIndex,
        items: [
        BottomNavigationBarItem(
              icon: Icon( bottomNavIndex == 0 ? Icons.home_outlined : Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon( bottomNavIndex == 1 ? Icons.person_outline : Icons.person),
              label: "Account"
          ),
          BottomNavigationBarItem(
              icon: Icon( bottomNavIndex == 2 ? Icons.local_offer_outlined : Icons.local_offer),
              label: "Offer"
          ),
        ],
      ),
    );
  }
}

