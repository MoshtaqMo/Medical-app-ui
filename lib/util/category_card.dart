import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final String iconpath;
   CategoryCard({super.key, required this.categoryName, required this.iconpath});

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.all(10),
                  height: 70,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Image.asset(iconpath),
                      Text(categoryName,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
                  ),
                );
  }
}