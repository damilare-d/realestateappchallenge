import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/houseListScreen.dart';
import 'package:real_estate_app/themes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
               
                children: [
                  Icon(Icons.home, 
          
                  color: Colors.blue, size: 30.0),
                   Text('Home',
                    style: lightTheme.textTheme.headline6,),
                  Text(
                    'bhase',
                    style: lightTheme.textTheme.headline6,
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: 'Looking ',
                  style: lightTheme.textTheme.headline5,
                  children: const <TextSpan>[
                    TextSpan(text: 'for an', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' elegant house in the place', style),
                  ],
                ),
              ),
              Text(
                'Welcome friends, are you looking for us ?',
                style: TextStyle(
                  color: lightTheme.primaryColor,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  HouseListScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  disabledForegroundColor: Colors.grey,
                ),
                child: const Text('Next'),
              ),
             Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,  
              child: Image.asset('asset/images/timberhouse.jpg'),),
            ],
          ),
        ),
      ),
    );
  }
}
