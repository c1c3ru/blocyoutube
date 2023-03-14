import 'package:flutter/material.dart';

class PaginaPerguntas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/start.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Stack(children: [
                Column(children: [
                  Row(
                    children: [
                      Image.asset('assets/images/menu_novo.png',
                          height: MediaQuery.of(context).size.height * 0.1),
                    ],
                  ),
                ]),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alterado
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 60,),
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/perg.png',
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'assets/images/espaco_texto_branco.png',
                          // height: MediaQuery.of(context).size.height * 2,
                           width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'assets/images/espaco_texto_verde.png',
                          // height: MediaQuery.of(context).size.height * 0.9,
                           width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'assets/images/espaco_texto_vermelho.png',
                          // height: MediaQuery.of(context).size.height * 0.9,
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          'assets/images/espaco_texto_branco.png',
                          // height: MediaQuery.of(context).size.height * 0.9,
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/Bpular.png',
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assets/images/Bpular.png',
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assets/images/Bpular.png',
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assets/images/Bpular.png',
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Image.asset('assets/images/botao_fechar.png',
                          height: MediaQuery.of(context).size.height * 0.10),
                    ),
                  ),
                ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
