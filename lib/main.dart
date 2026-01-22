import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Matches'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          MatchCard(team1: 'India', team2: 'Australia'),
          MatchCard(team1: 'CSK', team2: 'MI'),
          MatchCard(team1: 'RCB', team2: 'KKR'),
        ],
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  final String team1;
  final String team2;

  const MatchCard({
    super.key,
    required this.team1,
    required this.team2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(team1, style: const TextStyle(fontSize: 18)),
            const Text(
              'VS',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(team2, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
