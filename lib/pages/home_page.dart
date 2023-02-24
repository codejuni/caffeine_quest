import 'package:caffeine_quest/utilities/circle_indicator.dart';
import 'package:caffeine_quest/models/coffee_model.dart';
import 'package:caffeine_quest/models/shop_model.dart';
import 'package:caffeine_quest/tiles/carousel_tile.dart';
import 'package:caffeine_quest/tiles/coffee_tile.dart';
import 'package:caffeine_quest/tiles/shop_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double space = 20;
  double margin = 20 * 0.5;

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 2,
      animationDuration: const Duration(
        seconds: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: margin),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.width * 0.5,
                margin: EdgeInsets.symmetric(vertical: margin),
                child: PageView.builder(
                  itemCount: 2,
                  controller: PageController(viewportFraction: 0.8),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CarouselTile(space: space, margin: margin);
                  },
                ),
              ),
              Container(
                width: size.width,
                height: 330,
                margin: EdgeInsets.symmetric(vertical: margin),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: margin),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: TabBar(
                          controller: tabController,
                          labelColor: Colors.black,
                          indicator: CircleTabIndicator(
                            color: Colors.black,
                            radius: 3,
                          ),
                          tabs: const [
                            Tab(text: 'Tea'),
                            Tab(text: 'Coffee'),
                            Tab(text: 'Featured'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Container(),
                          ListView.separated(
                            itemCount: CoffeeModel.list.length,
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(horizontal: space),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: space),
                            itemBuilder: (context, index) {
                              return CoffeeTile(
                                margin: margin,
                                space: space,
                                model: CoffeeModel.list[index],
                              );
                            },
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: margin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: space),
                      title: Text(
                        'Choose a Store',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Chage city',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(height: margin),
                    ListView.separated(
                      itemCount: ShopModel.list.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: space),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: space),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ShopTile(
                          space: space,
                          model: ShopModel.list[index],
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
