import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String pizzaImagePath;
  final String title;
  const ProductDetail({
    super.key,
    required this.pizzaImagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.favorite_border, color: Colors.red),
                ],
              ),

              SizedBox(height: size.height * 0.01),

              Text(
                "Mixed Pizza with beef, chili and cheese",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: size.width * 0.035,
                ),
              ),

              SizedBox(height: size.height * 0.005),

              Row(
                children: [
                  Icon(Icons.star, color: Colors.red, size: size.width * 0.04),
                  SizedBox(width: 5),
                  Text(
                    "4.7",
                    style: TextStyle(
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.03),

              Center(
                child: Container(
                  height: size.width * 0.8,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(pizzaImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(height: size.height * 0.04),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfoItem("Calories", "120", size),
                  _buildInfoItem("Volume", "12 inch", size),
                  _buildInfoItem("Distance", "1 KM", size),
                ],
              ),

              SizedBox(height: size.height * 0.025),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfoItem("Order", "01", size),
                  _buildInfoItem(
                    "Delivery",
                    "Express",
                    size,
                    valueColor: Colors.green,
                  ),
                  _buildInfoItem(
                    "Price",
                    "\$8.99",
                    size,
                    valueColor: Colors.red,
                  ),
                ],
              ),

              Spacer(),

              SizedBox(
                width: double.infinity,
                height: size.height * 0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem(
    String title,
    String value,
    Size size, {
    Color? valueColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: size.width * 0.035, color: Colors.grey),
        ),
        SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: size.width * 0.04,
            fontWeight: FontWeight.bold,
            color: valueColor ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
