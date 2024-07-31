
import 'package:flutter/material.dart';
class HowItWorksStep extends StatelessWidget {
  final String title;
  final String description;
  const HowItWorksStep({super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description , textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}