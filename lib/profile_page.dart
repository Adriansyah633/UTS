import 'package:flutter/material.dart';
import 'package:dashboard/utilitis/category_card.dart';
import 'package:dashboard/utilitis/doctor_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Hello, ',
                     style: TextStyle(fontWeight: FontWeight.bold,
                     fontSize: 18,
                     ),
                     ),
                     SizedBox(height: 8,),
                    Text('This Is My Profile',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                    ),

                  ],
                ),

                //profile
          
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                  ),
                  child: Icon(Icons.person)),
               
              ],
            ),
          ),

          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: 
              Row(
                children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('lib/images/syahrul5.jpg'),
                      ),

                      SizedBox(width: 25,),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text('Syahrul Adrianto',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),

                        SizedBox(height: 8,),

                        Text('Informatika Universitas PGRI Semarang',
                        style: TextStyle(
                          fontSize: 14,
                        ),),

                        SizedBox(height: 8,),

                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                          ),
                          child: Center(child: Text('NPM : 216700047',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                        ),
                        ),
                          ],
                        ),
                      )
                    ],
              ),
                  ),
          ),

          SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('About Me',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),),
            ),
          ),

          SizedBox(height: 25,),

          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
             CategoryCard(
              categoryName: 'Hobby',
              iconImagePath: 'lib/icons/games.png',
             ),
             CategoryCard(
              categoryName: 'Education',
              iconImagePath: 'lib/icons/mortarboard.png',
             ),
             CategoryCard(
              categoryName: 'Social Media',
              iconImagePath: 'lib/icons/social-media.png',
             ),
             CategoryCard(
             iconImagePath: 'lib/icons/requirements.png',
             categoryName: 'Skillz',
             ),

            ]),
          ),

          SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Photobooth',
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
                ),
                Text('See all',
                style: TextStyle(color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),),

            SizedBox(height: 25,),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                DoctorCard(
                  syahrulImagePath: 'lib/images/syahrul2.jpg',
                  rating: '4.8',
                  locationName: 'Pantai Pandawa',
                  islandName: 'Balinesia',
                ),
                 DoctorCard(
                  syahrulImagePath: 'lib/images/syahrul4.jpg',
                  rating: '4.9',
                  locationName: 'Pantai Kuta',
                  islandName: 'Balinesia',
                ),
                 DoctorCard(
                  syahrulImagePath: 'lib/images/syahrul6.jpg',
                  rating: '5.0',
                  locationName: 'Panglipuran',
                  islandName: 'Balinesia',
                ),
                DoctorCard(
                  syahrulImagePath: 'lib/images/syahrul1.JPG',
                  rating: '5.0',
                  locationName: 'BDI',
                  islandName: 'Balinesia',
                ),
                DoctorCard(
                  syahrulImagePath: 'lib/images/syahrul3.jpg',
                  rating: '5.0',
                  locationName: 'Tanah Lot',
                  islandName: 'Balinesia',
                ),
              ],),
               ),
          
          ],
        ),
          ),
          



      
        
          //card


          // searchbar

          //listview


          // photobootsh
      );
      
    
    
  }
}