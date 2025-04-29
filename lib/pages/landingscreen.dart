import 'package:flutter/material.dart';
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _selectedIndex = 0;

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
        backgroundColor: Colors.deepPurpleAccent, // this might hurt eye but looks good to me
        centerTitle: true,
        title:  Text(
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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // i dont like how we cant just give children to allign and have to use this
            children: [
              Text(
                'Unlock your future',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 1), //using as buffer cuz spacer is frankly in my opinion bad for not allowing decimal values
              Text(
                '\nExplore our wide collection of powerful tools meant to aid u in your journey in content creation,social media,etc\n',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 1),
              SizedBox(height:20),
              Text(
                'Discover New Trends',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent,
                ),
              ),
              Text(
                '\nUsing our apps unique trend section you can easily infer about the latest trends in ur local area\n',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,

                ),
              ),
              Text(
                'Generate Content Ideas',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                '\nUse our AI powered tool to help generate your self content ideas,hastags,captions,post ideas,etc\n',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex, 
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        elevation: 10,
        onTap: _onItemTapped,
      ),

    );
  }
}