import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle productTitle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productSubtitle = TextStyle(
    fontSize: 12.0,
    color: Colors.grey,
  );

  static const TextStyle productPrice = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productOldPrice = TextStyle(
    fontSize: 12.0,
    decoration: TextDecoration.lineThrough,
    color: Colors.grey,
  );

  static const TextStyle productRating = TextStyle(
    fontSize: 12.0,
    color: Colors.grey,
  );
}
