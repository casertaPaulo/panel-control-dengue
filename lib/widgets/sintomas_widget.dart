import 'package:flutter/material.dart';

class SintomasWidget extends StatefulWidget {
  const SintomasWidget({super.key});

  @override
  State<SintomasWidget> createState() => _SintomasWidgetState();
}

class _SintomasWidgetState extends State<SintomasWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: double.infinity,
                    height: 1500,
                    //color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                "assets/images/pessoa-doente.png",
                                height: 200,
                              ),
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: "LEMONMILK-BOLD",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'SINAIS E\n',
                                        ),
                                        TextSpan(
                                          text: "SINTOMAS",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: "ROBOTOCONDENSED",
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'Todo indivíduo que apresentar',
                              ),
                              TextSpan(
                                text: " febre (39°C a 40°C) ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "de início repentino e apresentar pelo menos duas das seguintes manifestações - ",
                              ),
                              TextSpan(
                                text:
                                    "dor de cabeça, prostração, dores musculares e/ou articulares e dor atrás dos olhos – ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "deve procurar imediatamente um serviço de saúde",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              TextSpan(
                                  text: ", a fim de obter tratamento oportuno.")
                            ],
                          ),
                        ),
                        const Text(
                          textAlign: TextAlign.justify,
                          "",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "ROBOTOCONDENSED",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
