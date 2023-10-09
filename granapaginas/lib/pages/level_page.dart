import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LevelPage extends StatefulWidget {
  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/caminho.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/images/bau_topo_branco.png',
                                    fit: BoxFit.fill,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('assets/images/nivel_novo.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1),
                                Image.asset('assets/images/nivel.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1),
                                Image.asset('assets/images/nivel_bloq.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1),
                              ],
                            ),
                            //Spacer(),
                            Row(
                              children: [
                                Image.asset('assets/images/nivel_bloq.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1),
                              ],
                            ),
                            // Stack(children: []),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.3,
                    left: MediaQuery.of(context).size.width * 0.5 - 50,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/images/menina.png'),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () => Modular.to.navigate('/PageShopping'),
                          child: Image.asset(
                            'assets/images/Bloja.png',
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
