import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardItem extends StatelessWidget {
  final String image;
  final String category;
  const CardItem({super.key, required this.image, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
                color: Colors.white,
                height: 120,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      image,
                      height: 35,
                      width: 35,
                    ),
                    SizedBox(height: 10,),
                    Text(category)
                  ],
                ),
              );
  }
}