import 'package:flutter/material.dart';

class Resourcescreen extends StatefulWidget {
  const Resourcescreen({super.key});

  @override
  State<Resourcescreen> createState() => _ResourcescreenState();
}

class _ResourcescreenState extends State<Resourcescreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });


    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/landingscreen');
        break;
      case 1:
        Navigator.pushNamed(context, '/google-trends-display');
        break;
      case 2:
        Navigator.pushNamed(context, '/content-gen');
        break;
      case 3:
        Navigator.pushNamed(context, '/resources');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text(
          'Influencer App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purpleAccent,
            fontSize: 30,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Here are some hand-picked platforms to help you',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.greenAccent,
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 1),
              const Text( '\nOpen Access Art (The Met): https://www.metmuseum.org/art/collection\nPexels: https://www.pexels.com\nUnsplash: https://www.unsplash.com\nPixabay: https://www.pixabay.com\nYouTube Audio Library: https://studio.youtube.com\nFree Music Archive: https://freemusicarchive.org\nBensound: https://www.bensound.com\nCoverr: https://www.coverr.co\nMixkit: https://mixkit.co\nVidevo: https://www.videvo.net',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: "trends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: "content",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Resources",
          ),
        ],
        elevation: 10,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
