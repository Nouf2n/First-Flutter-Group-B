import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_page.dart';

 class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 3),
            Text(
              'Select Your 3 Interests',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
            ),
            Text(
              'Later you can add more in your account :)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  InterestCard(
                    text: 'Travel & Adventures',
                    imageUrl: 'images/travel.png',
                    backgroundColor: Colors.white,
                    borderColor: Color(0xFFFFC0CB),
                  ),
                  InterestCard(
                    text: 'Music',
                    imageUrl: 'images/music.png',
                    backgroundColor: Color.fromARGB(255, 255, 214, 221),
                    borderColor: Colors.transparent,
                  ),
                  InterestCard(
                    text: 'Art',
                    imageUrl: 'images/art.png',
                    backgroundColor: Color.fromARGB(255, 255, 214, 221),
                    borderColor: Colors.transparent,
                  ),
                  InterestCard(
                    text: 'Food & Drink',
                    imageUrl: 'images/food.png',
                    backgroundColor: Colors.white,
                    borderColor: Color(0xFFFFC0CB),
                  ),
                  InterestCard(
                    text: 'Home & Lifestyle',
                    imageUrl: 'images/home.png',
                    backgroundColor: Colors.white,
                    borderColor: Color(0xFFFFC0CB),
                  ),
                  InterestCard(
                    text: 'Others',
                    imageUrl: '', 
                    backgroundColor: Color.fromARGB(255, 255, 214, 221),
                    borderColor: Colors.transparent,
                    isTextOnly: true, 
                  ),
                ],
              ),
            ),
            SizedBox(height: 3),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFC0CB),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('CONTINUE'),
            ),
          ],
        ),
      ),
    );
  }
}

class InterestCard extends StatelessWidget {
  final String text;
  final String imageUrl;
  final Color backgroundColor;
  final Color borderColor;
  final bool isTextOnly;

  const InterestCard({super.key, 
    required this.text,
    required this.imageUrl,
    required this.backgroundColor,
    required this.borderColor,
    this.isTextOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3, 
      height: 3, 
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 2),
        borderRadius: BorderRadius.circular(28), 
      ),
      child: Card(
        elevation: 0,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              if (!isTextOnly) ...[
              Image.network(
                imageUrl,
                height: 115, 
                width: 115, 
                fit: BoxFit.cover,
              ),
              SizedBox(height: 3),
            ],
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20), 
            ),
          ],
        ),
      ),
    );
  }
}