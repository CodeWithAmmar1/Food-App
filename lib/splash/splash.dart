import 'package:app/auth/login_in.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),

          Image.asset("assets/splashScreen.png"),
          Text(
            "Order Your Food Now!",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "order food and get delivery within a few \n                  minutes to your door",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginIn()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Get Started ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        ],
      ),
    );
  }
}
