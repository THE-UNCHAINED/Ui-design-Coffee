import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_building/utils/coffee_tile.dart';
import 'package:ui_building/utils/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final List coffeeType = [
  ["Cappuccino", true],
  ["Latte", false],
  ["Black", false],
  ["Tea", false],
];

class _HomePageState extends State<HomePage> {
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.lock), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: " "),
        ],
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Find the best  Coffee  for  you ",
                style: GoogleFonts.bebasNeue(fontSize: 58))),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: " Find your Coffee...",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600))),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffeeType.length,
            itemBuilder: (context, index) {
              return CoffeeType(
                coffee_type: coffeeType[index][0],
                isSelected: coffeeType[index][1],
                onTap: () {
                  coffeeTypeSelected(index);
                },
              );
            },
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CoffeeTile(
                coffePrice: '4.20',
                coffeeImagePath: 'assets/images/coffee1.jpg',
                coffeeName: 'Cappuccino',
              ),
              CoffeeTile(
                coffePrice: '3.20',
                coffeeImagePath: 'assets/images/coffee3.jpg',
                coffeeName: 'Latte',
              ),
              CoffeeTile(
                coffePrice: '5.20',
                coffeeImagePath: 'assets/images/coffee2.jpg',
                coffeeName: 'Coffee with Brew',
              ),
            ],
          ),
        ),
      ],
        ),
    );
  }
}
