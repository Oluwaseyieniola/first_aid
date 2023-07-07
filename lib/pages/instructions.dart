import 'package:flutter/material.dart';

class FirstAidScreen extends StatelessWidget {
  final String injuryType;
  final String description;

  const FirstAidScreen(
      {super.key, required this.injuryType, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Aid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Injury Type: $injuryType',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Description: $description',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'First Aid Instructions:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const Text(
              '1. Stay calm and reassure the injured person.',
              style: TextStyle(fontSize: 18.0),
            ),
            const Text(
              '2. Apply pressure to stop bleeding if applicable.',
              style: TextStyle(fontSize: 18.0),
            ),
            const Text(
              '3. Elevate the injured area if possible.',
              style: TextStyle(fontSize: 18.0),
            ),
            const Text(
              '4. Immobilize the injured area if necessary.',
              style: TextStyle(fontSize: 18.0),
            ),
            const Text(
              '5. Keep the injured person warm and comfortable.',
              style: TextStyle(fontSize: 18.0),
            ),
            const Text(
              '6. Do not give the injured person anything to eat or drink if there is a possibility of surgery.',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button color
                  elevation: 3, // Elevation/depth of the button
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8), // Button border radius
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('main');
                },
                child: const Text('Find Nereby hospital'))
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FirstAidScreen(
      injuryType: 'Example Injury',
      description: 'Example injury description.',
    ),
  ));
}
