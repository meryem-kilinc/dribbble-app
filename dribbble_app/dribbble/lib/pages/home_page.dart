import 'package:dribbble/util/emoticion_face.dart';
import 'package:dribbble/util/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Menü'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greeting
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi Jared!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Merhaba, Meryem!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '14/07/2025',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Icon(Icons.notifications, color: Colors.blue),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  //search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),

                        SizedBox(width: 5),

                        Text('Ara', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // Nasıl hissediyorsun?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nasıl hissediyorsun?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),

                  SizedBox(height: 25),

                  //4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticionFace(emoticionFace: '😞'.toString()),

                          SizedBox(height: 5, width: 15),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      //fine
                      Column(
                        children: [
                          EmoticionFace(emoticionFace: '🙃'.toString()),
                          SizedBox(height: 8),
                          Text(
                            'İdare eder',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //exellent
                      Column(
                        children: [
                          EmoticionFace(emoticionFace: '😋'.toString()),
                          SizedBox(height: 8),
                          Text(
                            'Mükemmel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      // well
                      Column(
                        children: [
                          EmoticionFace(emoticionFace: '😌'.toString()),
                          SizedBox(height: 10),
                          Text(
                            'Gayet İyi',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Egzersiz',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      SizedBox(height: 20),

                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Konuşma Becerileri',
                              numberOfExercises: 15,
                              color: Colors.amber.shade400,
                            ),
                            ExerciseTile(
                              icon: Icons.menu_book,
                              exerciseName: 'Okuma Becerileri',
                              numberOfExercises: 8,
                              color: Colors.amber.shade400,
                            ),
                            ExerciseTile(
                              icon: Icons.edit_note,
                              exerciseName: 'Yazma Becerileri',
                              numberOfExercises: 20,
                              color: Colors.amber.shade400,
                            ),
                          ],
                        ),
                      ),
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
