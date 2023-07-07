import 'package:flutter/material.dart';

class InjuryDetailsScreen extends StatefulWidget {
  const InjuryDetailsScreen({super.key});

  @override
  InjuryDetailsScreenState createState() => InjuryDetailsScreenState();
}

class InjuryDetailsScreenState extends State<InjuryDetailsScreen> {
  late String injuryType;
  late String description;
  late String contactNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Injury Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Type of Injury',
              ),
              onChanged: (value) {
                setState(() {
                  injuryType = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
              onChanged: (value) {
                setState(() {
                  description = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Contact Number',
              ),
              onChanged: (value) {
                setState(() {
                  contactNumber = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            TextButton(
              child: const Text('Request First Aid'),
              onPressed: () {
                Navigator.of(context).pushNamed('instructions');
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: InjuryDetailsScreen(),
  ));
}
