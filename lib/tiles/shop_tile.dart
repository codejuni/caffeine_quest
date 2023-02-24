import 'package:caffeine_quest/models/shop_model.dart';
import 'package:flutter/material.dart';

class ShopTile extends StatelessWidget {
  const ShopTile({
    super.key,
    required this.space,
    required this.model,
  });

  final double space;
  final ShopModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(40),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            color: Theme.of(context).primaryColor,
            child: Image.asset(
              model.image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: space),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  model.name,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18,
                      ),
                ),
                Text(
                  model.address,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
