import 'package:caffeine_quest/assets/app_icons.dart';
import 'package:flutter/material.dart';

class CarouselTile extends StatelessWidget {
  const CarouselTile({
    super.key,
    required this.space,
    required this.margin,
  });

  final double space;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Colors.white,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(margin),
      child: Padding(
        padding: EdgeInsets.all(space * 0.7),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pick of the day',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'Coffee Espresso',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 18,
                        ),
                  ),
                  Expanded(
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).primaryColor,
                          ),
                          shadowColor: const MaterialStatePropertyAll(
                            Colors.black12,
                          ),
                          elevation: const MaterialStatePropertyAll(6),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        child: Text(
                          '\$ 3.50',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: margin),
            Expanded(
              child: Image.asset(
                AppIcons.expresso,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
