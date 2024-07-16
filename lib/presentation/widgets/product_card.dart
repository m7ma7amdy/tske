import 'package:flutter/material.dart';
import 'package:flutter_product_list/data/models/product.dart';
import 'package:flutter_product_list/styles.dart'; // Import the styles file

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  product.thumbnail!,
                  height: 120.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8.0,
                right: 8.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite_border),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title!,
                  style: AppStyles.productTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Nike shoes flexible for women',
                  style: AppStyles.productSubtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    Text(
                      'EGP ${product.price}',
                      style: AppStyles.productPrice,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '2000 EGP',
                      style: AppStyles.productOldPrice,
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(children: [
                    Text(
                      'Review (${product.rating})',
                      style: AppStyles.productRating,
                    ),
                    SizedBox(width: 4.0),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                      size: 16.0,
                    ),]),
                    CircleAvatar(
                      backgroundColor: Colors.indigo,radius: 15,
                      child: Icon(Icons.add , color: Colors.white,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
