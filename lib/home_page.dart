import 'package:dashboard/login.dart';
import 'package:dashboard/profile_page.dart';
import 'package:dashboard/utilitis/emoticon_Face.dart';
import 'package:dashboard/utilitis/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [
    LoginPage(),
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal:25.0),
               child: Column(
                children:[
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hallo Syahrul!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text("26 Oktober, 2023",
                        style: TextStyle(color: Colors.blue[200]),)
                      ],
                    ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Icon(Icons.notifications,
                    color: Colors.white,
                    ),
                  ),
                  ],
                ),
                
                ],    
               ),
             ),   
                
             SizedBox(height: 25,),
             
                // Bar Search
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(16),
                  child:Row(
                    children: [
                      Icon(Icons.search, color: Colors.white,
                      ),
             
                      SizedBox(width: 5,),
             
                      Text("Seacrh",
                      style: TextStyle(
                        color: Colors.white
                      ),
                      ),
                    ],
                 ),
                ),
             
                 SizedBox(height: 25,),
             
                         // how do you feel
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text("How do you feel?                                      ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )
                 ],
               ),
             
               SizedBox(height: 25,),
             
               // different faces
             
                         Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // smile
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😄',
                      ),
             
                      SizedBox(height: 8,),
             
                      Text('Happy', style: TextStyle(color: Colors.white),),
                    ],
                  ),
             
             
                  //bad
                 Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '🥺',
                      ),
             
                      SizedBox(height: 8,),
                      
                      Text('Sad', style: TextStyle(color: Colors.white),),
                    ],
                  ),
               
             
                  //sad
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😞',
                      ),
             
                      SizedBox(height: 8,),
                      
                      Text('Tired', style: TextStyle(color: Colors.white),),
                    ],
                  ),
             
                  // angry
                  //sad
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😠',
                      ),
             
                      SizedBox(height: 8,),
                      
                      Text('Angry', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ],
                         ),
             SizedBox(height: 15,),
               
             
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // exercise heading
                          Text('Exercise',
                          style: TextStyle(
                            fontWeight : FontWeight.bold,
                            fontSize: 20,
                          ),),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      SizedBox(height: 10,),

                    // listview 
                   Expanded(
                     child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: 'My Favorite',
                          numberOfExercises: 10,
                          color: Colors.red,
                        ),
                        ExerciseTile(
                           icon: Icons.people_sharp,
                          exerciseName: 'Speaking Skillz',
                          numberOfExercises: 16,
                          color: Colors.orange,
                        ),
                        ExerciseTile(
                           icon: Icons.star,
                          exerciseName: 'Performance Skillz',
                          numberOfExercises: 10,
                          color: Colors.green,
                        ),
                         ExerciseTile(
                           icon: Icons.money,
                          exerciseName: 'Buissiness Skillz',
                          numberOfExercises: 10,
                          color: Colors.pink,
                        ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               ElevatedButton(
                            onPressed: () {
                             Navigator.push(
                            context,
                             MaterialPageRoute(
                               builder: (context) => LoginPage(),
                            ));
                           },
                             child: const Text('Back',
                             style: TextStyle(fontWeight: FontWeight.bold),),
                            ),

                         ElevatedButton(
                        onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
              },
              child: const Text('Profile',
              style: TextStyle(fontWeight: FontWeight.bold),),
            ),
                            ],
                          ),
                      ],
                     ),
                   )
                    ],
                ),
              ),
            ),
            ),
            ],
      ),
    ),
    );
    
    
          
    

    
  }
}