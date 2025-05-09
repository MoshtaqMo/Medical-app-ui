import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  final String name;
  final String experience;
  final String ratingText;
  const DoctorCard({super.key, required this.image, required this.name, required this.experience, required this.ratingText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,bottom: 8),
      
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

          color: Colors.grey[300],
        ),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(image,height: 100,width: 100,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text(ratingText)
                      ],
                    ),
                    Text(name,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    Text(experience,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                  ],),
                ),
    );
  }
}