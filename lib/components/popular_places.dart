import 'package:flutter/material.dart';
import '/config/constants.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.0),
      child: SizedBox(
        height: 135.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Popular Places This Month',
              style: TextStyle(
                fontSize: Fonts.subtitle,
                fontWeight: Fonts.lightWeight,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                place(),
                place(),
                place(),
                place(),
              ],
            )
          ],
        ),
      ),
    );
  }

  GridTile place() {
    return GridTile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30.0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.red,
                shape: BoxShape.rectangle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
