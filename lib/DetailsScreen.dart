import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final double rate;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
        backgroundColor: Colors.teal.shade800,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const SizedBox(width: 4),
                    Text(
                      rate.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),


            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade700,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text('Go Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}