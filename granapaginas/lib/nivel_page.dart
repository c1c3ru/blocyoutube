import 'package:flutter/material.dart';

class NivelPage extends StatefulWidget {
  @override
  _NivelPageState createState() => _NivelPageState();
}

class _NivelPageState extends State<NivelPage> {
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
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Image.asset(
                                'assets/images/bau_topo_branco.png'),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child:
                            Image.asset('assets/images/botao_voltar.png'),
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
                                    height: MediaQuery.of(context).size.height * 0.1),
                                Image.asset('assets/images/nivel.png',
                                    height: MediaQuery.of(context).size.height * 0.1),
                                Image.asset('assets/images/nivel_bloq.png',
                                    height: MediaQuery.of(context).size.height * 0.1),
                              ],
                            ),
                            //Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/nivel_bloq.png',
                                    height: MediaQuery.of(context).size.height * 0.1),
                                CircleAvatar(
                                  radius: 50,
                                  child: Image.asset('assets/images/menina.png'),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.black45,
                                  ),
                                  child: const Text(
                                    'Menina',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
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
                  Positioned(
                    bottom: 0,
                    left: 300,
                    right: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image.asset('assets/images/Bloja.png'),
                    ),
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
