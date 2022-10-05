import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  String imageName;
  String title;

  RecipeListItem({Key? key, required this.imageName, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        // Column 내부는 기본적으로 가운데 정렬됨
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AspectRatio(
              aspectRatio: 2 / 1,
              child: Image.asset(
                // ~.~ :이름있는생성자
                "assets/images/${imageName}.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Made ${title}",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Have you ever made your own Made ${imageName}? Once you've tried a homemade Made ${imageName}, you'll never go back.",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
