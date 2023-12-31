

class House {
  final String mainImage;
  final List<String> additionalImages; // Add this property
  final String address;
  final double price;
  final String type;
  final int rating;
  final String description;

  House({
    required this.mainImage,
    required this.additionalImages,
    required this.address,
    required this.price,
    required this.type,
    required this.rating,
    required this.description,
  });
}


House myHouse = House(
  mainImage: 'assets/main_house_image.jpg',
  additionalImages: ['assets/image1.jpg', 'assets/image2.jpg', 'assets/image3.jpg'],
  address: '123 Main St',
  price: 500000.0,
  type: 'Single Family',
  rating: 4,
  description: 'A beautiful house description.',
);




// In your UI, you can use myHouseWidget like any other widget.
// For example, you can include it in a ListView, Column, or Row.

