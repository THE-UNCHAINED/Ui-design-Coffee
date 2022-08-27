import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffePrice;

  CoffeeTile(
      {required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffePrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 190,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(13)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(coffeeImagePath)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(coffeeName, style: TextStyle(fontSize: 18)),
                Text("With Milk and Almond",
                    style: TextStyle(color: Colors.grey[700], fontSize: 15))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$" + coffePrice),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(3)),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
