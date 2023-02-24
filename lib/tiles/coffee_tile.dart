import 'package:caffeine_quest/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    super.key,
    required this.margin,
    required this.space,
    required this.model,
  });

  final double margin;
  final double space;
  final CoffeeModel model;
  final double sizeWidthItem = 170;

  final double heightPrice = 45;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWidthItem,
      child: Stack(
        children: [
          Expanded(
            child: Card(
              elevation: 6,
              shadowColor: Colors.black12,
              clipBehavior: Clip.antiAlias,
              color: Theme.of(context).primaryColor,
              margin: EdgeInsets.only(
                bottom: margin,
                top: 30,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(bottom: heightPrice),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomRight,
                width: 160,
                child: Image.asset(
                  model.image,
                  width: 90,
                  height: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: space,
                  horizontal: space * 1.2,
                ),
                child: Text(
                  model.name,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: space * 1.2,
                ),
                child: Text(
                  model.detail,
                  maxLines: 4,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.5,
                        wordSpacing: 3.5,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                height: heightPrice,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: space * 0.9,
                ),
                margin: EdgeInsets.only(bottom: margin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$ ${model.price.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
