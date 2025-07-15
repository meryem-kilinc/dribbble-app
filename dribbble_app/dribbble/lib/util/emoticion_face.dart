import 'package:flutter/material.dart';

class EmoticionFace extends StatelessWidget {
  final String emoticionFace;
  const EmoticionFace({
    Key? key, 
    required this.emoticionFace})
    : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(16),
      child: Center(child: Text(emoticionFace, style: TextStyle(fontSize: 25))),
    );
  }
}
