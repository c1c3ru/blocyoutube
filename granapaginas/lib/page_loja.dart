import 'package:flutter/material.dart';

class PageLoja extends StatefulWidget {

  @override
  _PageLojaState createState() => _PageLojaState();
}

class _PageLojaState extends State<PageLoja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/fundo_loja.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 100,
              right: 50,
              bottom: MediaQuery.of(context).size.height / 2,
              child: Container(
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height * 0.1,
                  width:  MediaQuery.of(context).size.width * 0.1,
                  child: Image.asset('assets/images/bau_topo_branco.png')),
            ),
            // Positioned(
            //   left: 0,
            //   right: 0,
            //   top: MediaQuery.of(context).size.height / 8,
            //   bottom: 0,
            //   child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       child: Image.asset('assets/images/botao_novoJogo.png')),
            // ),
            // Positioned(
            //   left: 0,
            //   right: 0,
            //   top: MediaQuery.of(context).size.height / 2,
            //   bottom: 0,
            //   child: Container(width: MediaQuery.of(context).size.width,
            //       child: Image.asset('assets/images/botao_loja.png')),
            // ),
            SafeArea(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.topCenter,
                                    height: MediaQuery.of(context).size.height * 0.20,
                                    width:  MediaQuery.of(context).size.width * 0.5,
                                    child: Image.asset(
                                      'assets/images/par_moedas.png',
                                      fit: BoxFit.fill,
                                    ),

                                  ),
                                ],
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Container(
                              //       height: MediaQuery.of(context).size.height *                                        0.10,
                              //       width:  MediaQuery.of(context).size.width * 0.5,
                              //       child: ElevatedButton(onPressed: () {},
                              //         child: Image.asset(
                              //           'assets/images/botao_fecha.png',
                              //           fit: BoxFit.fill,
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height * 0.10,
                                    width:  MediaQuery.of(context).size.width * 0.5,
                                    child: GestureDetector(onTap: () {},
                                      child: Image.asset(
                                        'assets/images/botao_comprar.png',
                                        fit: BoxFit.fill,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
