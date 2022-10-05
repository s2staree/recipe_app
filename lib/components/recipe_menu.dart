import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  RecipeMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "ALL"), // 메서드 만들면서 _ 붙이면 외부접근불가
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Burger"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData micon, String mtext) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), // border변형없이둥글게만듦
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            micon,
            color: Colors.redAccent,
            size: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            mtext,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
