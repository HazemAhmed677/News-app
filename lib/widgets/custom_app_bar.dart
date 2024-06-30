import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
