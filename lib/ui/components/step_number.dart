import 'package:flutter/material.dart';

class StepNumbers extends StatelessWidget {
  final int stepNumber;
  const StepNumbers({super.key, required this.stepNumber});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue, width: 3), 
            ),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 27,
              child: Text(
                '$stepNumber',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
