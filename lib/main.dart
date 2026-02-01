import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Usually matching the dark aesthetic in images
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('YOUR_IMAGE_URL'),
            ),
            const Text('@YourUsername', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            // Example of a Link Button
            LinkButton(title: "My Portfolio", url: "https://..."),
            LinkButton(title: "Latest Project", url: "https://..."),
          ],
        ),
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final String title;
  final String url;
  const LinkButton({required this.title, required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: SizedBox(
        width: 400, // Fixed width for desktop/web look
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
          onPressed: () {}, // Add logic to open URL
          child: Text(title),
        ),
      ),
    );
  }
}