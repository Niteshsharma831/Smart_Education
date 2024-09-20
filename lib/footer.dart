import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 13, 13, 79),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            '© 2024 PeakPath. All rights reserved.',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/home'); 
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/profile'); 
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/settings'); 
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.info, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/about'); 
                },
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: 16),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms of Service',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
