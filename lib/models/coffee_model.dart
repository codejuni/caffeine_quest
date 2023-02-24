import 'package:caffeine_quest/assets/app_icons.dart';

class CoffeeModel {
  String name;
  String detail;
  String image;
  double price;
  String category;

  CoffeeModel(
      {required this.name,
      required this.detail,
      required this.image,
      required this.price,
      required this.category});

  static List<CoffeeModel> list = [
    CoffeeModel(
      name: 'Coffee Americano',
      detail:
          'Enjoy the unique flavor and aroma of coffee, plus its stimulating effect that can help increase concentration and energy.',
      image: AppIcons.americano,
      price: 3.5,
      category: 'Coffee',
    ),
    CoffeeModel(
      name: 'Coffee Macchiato',
      detail:
          'It can be served hot or cold and can be customized to individual tastes by adding more or less frothed milk.',
      image: AppIcons.macchiato,
      price: 3,
      category: 'Coffee',
    ),
    CoffeeModel(
      name: 'Coffee Ristretto',
      detail:
          'It is prepared in the same way, but with less water and an even smaller amount of finely ground coffee. This results in an even more concentrated drink with an even more intense flavor than traditional espresso.',
      image: AppIcons.ristretto,
      price: 4,
      category: 'Coffee',
    ),
  ];
}
