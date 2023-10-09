import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageShopping extends StatefulWidget {
  @override
  _PageShoppingState createState() => _PageShoppingState();
}

class _PageShoppingState extends State<PageShopping> {
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
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Stack(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Image.asset(
                                'assets/images/bau_topo_branco.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('assets/images/tela_anterior.png'),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('assets/images/proxima_tela.png'),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
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
                                    height: MediaQuery.of(context).size.height *
                                        0.20,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Image.asset(
                                      'assets/images/par_moedas.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: GestureDetector(
                                      onTap: () {},
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
