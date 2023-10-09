import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageAbout extends StatefulWidget {
  @override
  _PageAboutState createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sobre_fundo.png'),
                  fit: BoxFit.fill, //removido o fit: BoxFit.cover
                ),
              ),
            ),
            SafeArea(
              child: Stack(
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        // alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => Modular.to.navigate('/PageAbout'),
                          child: Image.asset(
                            'assets/images/botao_sobre.png',
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () => Modular.to.navigate('/'),
                          child: Image.asset(
                            'assets/images/botao_fechar.png',
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
