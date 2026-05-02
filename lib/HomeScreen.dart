import 'package:flutter/material.dart';
import 'package:movies_assignment/DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          'Movie Explorer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.teal.shade800,
        foregroundColor: Colors.white,
        elevation: 4,
        toolbarHeight: 60,
        toolbarOpacity: 1.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blueGrey.shade50,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Popular Movies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          _buildMovieCard(context,
            'Inception',
            'Sci-Fi • 2010',
            'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of C.E.O.',
            6.1,
          ),
          _buildMovieCard(context,
            'The Matrix',
            'Sci-Fi • 1999',
            'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.',
            4.5,

          ),
          _buildMovieCard(context,
            'Interstellar',
            'Sci-Fi • 2014',
            'A team of explorers travel through a wormhole in space inan attempt to ensure humanity,s survival.',
            7.0,
          ),
          _buildMovieCard(context,
            'Until Down',
            'Sci-Fi • 2030',
            'A group of eight friends must survive a night of terror in a remote mountain retreat while being hunted by a mysterious and deadly presence.',
            9.9,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal.shade700,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Widget _buildMovieCard(BuildContext context, String title, String subtitle, String description, double rate) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        title: title,
                        subtitle: subtitle,
                        description: description,
                        rate: rate,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.movie, color: Colors.teal),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              Text(rate.toString()),
            ],
          ),
        ],
      ),
    );
  }}