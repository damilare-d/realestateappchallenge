import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, color: Colors.blue, size: 30.0),
              const Text('Home '),
              Text(
                'bhase',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          RichText(
            text: TextSpan(
              text: 'Looking',
              style: Theme.of(context).textTheme.headline6,
              children: const <TextSpan>[
                TextSpan(text: 'for an', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' elegant house in the place'),
              ],
            ),
          ),
          Text(
            'Welcome friends, are you looking for us ?',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14.0,
            ),
          ),
         const Text(
            'Congratulations you have found us',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              disabledForegroundColor: Colors.grey,
            ),
            child: const Text('Next'),
          ),
          Image.asset('asset/timberhouse.jpg'),
        ],
      ),
    );
  }
}
