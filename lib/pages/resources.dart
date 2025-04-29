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
        toolbarHeight: 50,// idk how else to change height else it was too big
        backgroundColor: Colors.deepPurple, // this might hurt eye but looks good to me
        centerTitle: true,
        title:  Text(
          'Influencer App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purpleAccent,
            fontSize: 22,
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
                'Here are some handpicked platforms to help you',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
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
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(//dont want to make it look other way
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              label: "Trends",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_fields),
              label: "Content",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Resources",
            ),
          ],
        ),
      ),

    );
  }
}
