import 'package:flutter/material.dart';
import 'package:real_estate_app/model/houseModel.dart';

class HouseDetailsPage extends StatefulWidget {
  final House house;

  HouseDetailsPage({Key? key, required this.house}) : super(key: key);

  @override
  _HouseDetailsPageState createState() => _HouseDetailsPageState();
}

class _HouseDetailsPageState extends State<HouseDetailsPage> {
  int currentImageIndex = 0;
  
void nextImage() {
  setState(() {
    currentImageIndex = (currentImageIndex + 1) % widget.house.additionalImages.length;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('House Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Main House Image
            Image.asset(
              widget.house.mainImage,
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              fit: BoxFit.cover,
            ),

            // Section 2: View More Images Button
            ElevatedButton(
              onPressed: nextImage,
              child: Text('View More Images'),
            ),

            // Section 3: Additional Images Stack
            Stack(
              children: [
                for (int i = 0; i < 2; i++)
                  Positioned(
                    top: 20.0 * i,
                    left: 20.0 * i,
                    child: Image.asset(
                      widget.house.additionalImages[i],
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
            ),

            // Section 4: Back Button
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            // Section 5: Rating
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text(widget.house.rating.toString()),
              ],
            ),

            // Section 6: Address and Love Icon
            Row(
              children: [
                Text(widget.house.address),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    // Toggle the user's interest in the house.
                    // You can implement your logic here.
                  },
                ),
              ],
            ),

            // Section 7: Description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(widget.house.description),
            ),

            // Section 8: Google Map Widget (You need to implement this)
            // Add your Google Map widget here.

            // Section 9: Price and Pay Now Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price: \$${widget.house.price} per month'),
                ElevatedButton(
                  onPressed: () {
                    // Implement the logic for payment.
                  },
                  child: Text('Pay Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
