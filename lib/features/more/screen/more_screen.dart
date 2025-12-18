import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const SizedBox(height: 50),
                    Center(
                    child: Text(
                    "Settings",
                     style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                       ),
                      ),
                    ),
                  ]
                ),
              ),
            ),
         );
  }
}
