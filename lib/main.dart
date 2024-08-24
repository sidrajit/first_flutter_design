import 'package:flutter/material.dart';

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
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        backgroundImage: AssetImage('assets/app-icon.png'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Food for\nEveryone',
                        style: TextStyle(
                          fontFamily: 'JS',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 46,
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
                            fontFamily: 'JS',
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
                height: 300,
                child: Card(
                  elevation: 10,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    children: [
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
                              color: Colors.white,
                              fontFamily: 'JS'),
                        ),
                      )
                    ],
                  ),
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
                              fontFamily: 'JS'),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'JS'),
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
                              fontFamily: 'JS'),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                        ),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'JS'),
                      ),
                      const SizedBox(height: 30),
                      const Text('Forgot Password ?',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'JS')),
                      const SizedBox(height: 80),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
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
                                  fontFamily: 'JS',
                                  color: Colors.red,
                                  fontSize: 18,
                                ))),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

///home screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
