import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {

  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;


  const ExerciseTile({
    Key? key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    required this.color,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Container(
          padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    color: color,
                    child: Icon(icon, color: Colors.red),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseName,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
      
                    SizedBox(height: 4),
                    Text(
                      numberOfExercises.toString() +' Egzersiz',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
