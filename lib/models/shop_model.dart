import 'package:caffeine_quest/assets/app_icons.dart';

class ShopModel {
  String name;
  String image;
  String address;

  ShopModel({required this.name, required this.image, required this.address});

  static List<ShopModel> list = [
    ShopModel(
      name: 'Joe the Art of Coffee',
      image: AppIcons.shop1,
      address: '141 Waverly Pl, New York',
    ),
    ShopModel(
      name: 'Café Grumpy',
      image: AppIcons.shop2,
      address: '20 Stone St, New York',
    ),
    ShopModel(
      name: 'Café Abraco',
      image: AppIcons.shop3,
      address: '81 E 7th St, New York, NY 10003',
    )
  ];
}
