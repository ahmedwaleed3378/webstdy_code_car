import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
  Row( 
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Helloe, Omar",
              style: Theme.of(context).textTheme.titleLarge ,
            ),
            Text(
              "Software Developer",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        )
      ],)
   ;
  }
}