import 'package:caffeine_quest/utilities/circle_indicator.dart';
import 'package:caffeine_quest/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.green[900],
          child: Row(
            children: [
              SizedBox(
                width: 70,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        Icons.menu,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Expanded(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TabBar(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            isScrollable: true,
                            controller: tabController,
                            labelColor: Theme.of(context).primaryColor,
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 30),
                            indicator: CircleTabIndicator(
                              color: Theme.of(context).primaryColor,
                              radius: 3,
                            ),
                            tabs: const [
                              Tab(
                                text: 'Restore Password',
                              ),
                              Tab(
                                text: 'Sign Up',
                              ),
                              Tab(
                                text: 'Sign In',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                    ),
                  ),
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      Center(
                        child: Text('Restore Password'),
                      ),
                      Center(
                        child: Text('Sing Up'),
                      ),
                      SignInPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
