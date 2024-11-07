import 'package:flutter/material.dart';
import 'theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root of application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chef-It!',
      theme: appTheme,
      home: const MyHomePage(title: 'Chef-It! Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<String> _iconNames = [
    'Home',
    'Messages',
    'Profile'
  ]; //list of the icon names

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 160, 60),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          _iconNames[_selectedIndex], // Displays the name of the selected icon
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context)
            .colorScheme
            .surface, // Sets the bottom navigation background color
        selectedItemColor: const Color.fromARGB(
            255, 53, 32, 24), // Brown color for the selected icon
        unselectedItemColor: const Color.fromARGB(
            255, 79, 56, 39), // Lighter brown for unselected icons
        currentIndex: _selectedIndex, // Tracks the currently selected tab
        onTap: _onItemTapped, // Update the selected index on item tap
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Home icon
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline), // Messages icon
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), // Profile icon
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}