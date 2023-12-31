import 'package:flutter/material.dart';
import 'package:real_estate_app/model/houseModel.dart';
import 'package:real_estate_app/screens/houseDetails.dart';

class HouseWidget extends StatelessWidget {
  final House house;

  const HouseWidget({Key? key, required this.house}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    HouseWidget myHouseWidget = HouseWidget(house: myHouse);
    return GestureDetector(
      onTap: () {
        // Navigate to another page when the widget is selected.
        Navigator.push(context, MaterialPageRoute(builder: (context) => HouseDetailsPage(house: house)));
      },
     child: Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
      image: AssetImage(house.mainImage),
      fit: BoxFit.cover,
    ),
  ),


        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.transparent,
                    ],
                  ),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      house.address,
                      style:const TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    Text(
                      '\$${house.price.toStringAsFixed(2)} | ${house.type}',
                      style: const TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                    Row(
                      children: [
                       const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          house.rating.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


