import 'package:flutter/material.dart';
import 'package:medicalappui/util/category_card.dart';
import 'package:medicalappui/util/doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    Text("Akram Al-shareqi",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Icon(Icons.person)
                // Image.asset("assest/images/doc1.jpeg",height: 100,width: 100,),
              ],
            ),
            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.only(right: 20),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon(Icons.medical_services),
                  Expanded(child: Image.asset("assest/images/doc1.jpeg",fit: BoxFit.cover,width: 100,)),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text("How do you feel?",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("Fill out your medical\n card right now",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: (){}, child: Text("get Started"))
                    ],
                  )
                ],
              )
            ),

            SizedBox(height: 20,),
            SearchBar(hintText: "Search for doctors",leading: Icon(Icons.search),),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  CategoryCard(categoryName: 'Destist', iconpath: 'assest/icons/tooth.png',),
                  CategoryCard(categoryName: 'Surgeon', iconpath: 'assest/icons/surgeon.png',),
                  CategoryCard(categoryName: 'Pharmacits', iconpath: 'assest/icons/medicine.png',),
              
              
                
              ],),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Doctor List",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                Text("See all",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            Expanded(child: 
              GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
                return DoctorCard(image: 'assest/images/doc1.jpeg', name: 'Dr.Akram Al-shareqi', experience: '7 Years of experince', ratingText: '4.9',);
              }, itemCount: 6,)),
            
          ],
        ),
      )),
    );
  }
}