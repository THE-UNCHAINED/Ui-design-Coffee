import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffee_type;
  final bool isSelected;
  final VoidCallback onTap;
  CoffeeType(
      {required this.coffee_type,
      required this.isSelected,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffee_type,
          style: TextStyle(
              color: isSelected ? Colors.orange : Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
