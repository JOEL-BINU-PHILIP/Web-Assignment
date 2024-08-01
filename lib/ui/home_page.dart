import 'package:flutter/material.dart';
import 'components/feature_card.dart';
import 'components/how_it_works_step.dart';
import '../utils/responsive_layout.dart';
import 'components/step_number.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Web Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Features', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            ResponsiveLayout(
              mobile: buildHorizontalFeatureCards(context, 1),
              tablet: buildHorizontalFeatureCards(context, 2),
              desktop: buildHorizontalFeatureCards(context, 3),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How it works?', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text(
                      "Company A transforms your processes into easy workflows. Here's how it works",
                      style: TextStyle(fontSize: 14)
                  ),
                ],
              ),
            ),
            ResponsiveLayout(
              mobile: buildHowItWorksSteps(context, 1),
              tablet: buildHowItWorksSteps(context, 2),
              desktop: buildHowItWorksSteps(context, 3),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHorizontalFeatureCards(BuildContext context, int count) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Container(
            width: MediaQuery.of(context).size.width / count,
            padding: const EdgeInsets.all(8.0),
            child: FeatureCard(
              image: 'assets/feature${index + 1}.png',
              title: 'Feature ${index + 1}',
              description: 'Description of feature ${index + 1}',
            ),
          );
        }),
      ),
    );
  }

  Widget buildHowItWorksSteps(BuildContext context, int count) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: screenWidth * 0.1, 
            ),
            const StepNumbers(stepNumber: 1),
            SizedBox(
              width: screenWidth * 0.20,
              child: const Divider(color: Color(0xFF373737), thickness: 2),
            ),
            const StepNumbers(stepNumber: 2),
            SizedBox(
              width: screenWidth * 0.20,
              child: const Divider(color: Color(0xFF373737), thickness: 2),
            ),
            const StepNumbers(stepNumber: 3),
            SizedBox(width: screenWidth * 0.1), 
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HowItWorksStep(
              title: "Input Your Vision",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in",
            ),
            HowItWorksStep(
              title: "Get Your Vision",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in",
            ),
            HowItWorksStep(
              title: "Customize Your Workflow",
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in",
            ),
          ],
        ),
      ],
    );
  }
}
