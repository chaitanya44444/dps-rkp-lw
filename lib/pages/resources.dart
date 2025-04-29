import 'package:flutter/material.dart';

class Resourcescreen extends StatelessWidget {
  const Resourcescreen({super.key});

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
                'Here are some hand-picked platforms to help you',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.greenAccent,
                  height: 1.3,
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1), //using as buffer cuz spacer is frankly in my opinion bad for not allowing decimal values
              Text(
                '\nOpen Access Art (The Met): https://www.metmuseum.org/art/collection\nPexels: https://www.pexels.com\nUnsplash: https://www.unsplash.com\nPixabay: https://www.pixabay.com\nYouTube Audio Library: https://studio.youtube.com\nFree Music Archive: https://freemusicarchive.org\nBensound: https://www.bensound.com\nCoverr: https://www.coverr.co\nMixkit: https://mixkit.co\nVidevo: https://www.videvo.net',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),

              Spacer(),
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/landingscreen'),
                      child: Icon(Icons.home, color: Colors.indigo),
                    ),

                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/google-trends-display'),
                      child: Text('Trends', style: TextStyle(fontSize: 16)),
                    ),

                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/content-gen'),
                      child: Text('Content-Gen', style: TextStyle(fontSize: 16)),
                    ),

                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/resources'),
                      child: Text('Resources', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}