import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.only(left: 30, top: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage('assets/app-icon.png'),
                    ),
                    SizedBox(height: 20),
                    Text('Food for\nEveryone',
                        style: TextStyle(
                          fontFamily: 'GS',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 42,
                        )),
                  ],
                )),
            const SizedBox(height: 60),
            Row(
              children: [
                Expanded(
                  child: Image.asset('assets/avatar-one.png'),
                ),
                Expanded(
                  child: Image.asset('assets/avatar-two.png'),
                ),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OnboardScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          elevation: 20,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)))),
                      child: const Text('Get Started',
                          style: TextStyle(
                            fontFamily: 'GS',
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                            fontSize: 18,
                          ))),
                ))
          ],
        ));
  }
}

/// onboard screen
class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 280,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Center(
                            child: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('assets/app-icon.png'),
                          radius: 40,
                        ))),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        'Lets Dig In',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'GS'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const TextField(
                        enableSuggestions: true,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          label: Text('Email Address'),
                          labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'GS'),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'GS'),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        enableSuggestions: true,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          label: Text('Password'),
                          labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'GS'),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'GS'),
                      ),
                      const SizedBox(height: 50),
                      const Text('Forgot Password ?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'GS')),
                      const SizedBox(height: 80),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 20,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)))),
                            child: const Text('Get Started',
                                style: TextStyle(
                                  fontFamily: 'GS',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red,
                                  fontSize: 18,
                                ))),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ));
  }
}

///home screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    void snackBar() {
      const SnackBar(
        content: Text('Yay! A SnackBar!'),
      );
    }
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/drawer.png', height: 26, width: 26),
                      Image.asset('assets/cart.png', height: 26, width: 26),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Delicious\nfood for you',
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: 'GS',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'GS',
                        fontWeight: FontWeight.w600),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontFamily: 'GS',
                          fontWeight: FontWeight.w600),
                      prefixIcon: const Icon(Icons.search),
                      fillColor: const Color(0xFFEEEEEE),
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(28)),
                    ),
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    cursorColor: Colors.red,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 30),
                  // TabBarView(
                  //   children: [
                  //     Text("Tab1"),
                  //     Text("Tab2"),
                  //     Text("Tab3"),
                  //     Text("Tab4"),
                  //   ],
                  //   controller: tabController,
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                      indicatorColor: Colors.red,
                      dividerHeight: 0,
                      indicatorSize: TabBarIndicatorSize.values.first,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.red,
                      controller: tabController!,
                      tabs: const [
                        Text('Foods',
                            style: TextStyle(fontSize: 18, fontFamily: 'GS')),
                        Text('Drinks',
                            style: TextStyle(fontSize: 18, fontFamily: 'GS')),
                        Text('Snacks',
                            style: TextStyle(fontSize: 18, fontFamily: 'GS')),
                        Text('Sauce',
                            style: TextStyle(fontSize: 18, fontFamily: 'GS')),
                      ])),
            )
          ],
        ),
      ),
      bottomNavigationBar: const SizedBox(
          width: double.infinity,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home_sharp, size: 40, color: Colors.red),
                  Icon(Icons.favorite_border, size: 40, color: Colors.grey),
                  Icon(Icons.person_2_outlined, size: 40, color: Colors.grey),
                  Icon(Icons.access_time_outlined,
                      size: 40, color: Colors.grey),
                ],
              ))),
    );
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
