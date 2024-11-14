import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final PageController pageController = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.white,
                Color(0xFFae3930),
              ],
              stops: [
                0.3,
                0.9,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "LemonMilk-bold",
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                              children: [
                                TextSpan(
                                  text: 'PREFEITURA\n',
                                ),
                                TextSpan(
                                  text: "MUNICIAPAL\nDE AREIÓPOLIS",
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/images/logo.png",
                            height: 100,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(14),
                          ),
                          child: const Text(
                            "PAINEL DE CONTROLE DA DENGUE",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: "RobotoCondensed",
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: PageView(
                      controller: pageController,
                      scrollDirection: Axis.vertical,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sintomas",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "RobotoCondensed",
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
