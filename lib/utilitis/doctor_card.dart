import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
 final String syahrulImagePath;
 final String rating;
 final String locationName;
 final String islandName;
 DoctorCard({
  required this.syahrulImagePath,
  required this.rating,
  required this.locationName,
  required this.islandName,
 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0),
      child: Container(
        padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(syahrulImagePath,
                        height: 200,
                        
                        ),
                      ),

                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(Icons.star),
                          Text(rating,
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text(
                        locationName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                        SizedBox(height: 5,),
                        Text(islandName),
                    ],
                  ),
                ),
              ),
    );
  }
}