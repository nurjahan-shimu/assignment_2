import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int counterValue;

  const DetailsScreen({super.key, required this.counterValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Details'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Received counter value:',
                style: TextStyle(fontSize: 16,
                    color: Colors.black54)
            ),
            SizedBox(height: 8),

            Text(
              '$counterValue',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}