import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide ReadContext;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:granapages/bloc/change_screen_bloc.dart';

import '../bloc/change_screen_bloc.dart';
import '../bloc/play_sound_bloc.dart';

class PageQuestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ChangeScreenBloc, ChangeScreenState>(
        builder: (context, state) {
          return Container(
            child: SafeArea(
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
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
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
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/menu_novo.png',
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //alterado
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                            child: SizedBox(
                              //alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/perg.png',
                                fit: BoxFit.contain,
                                width: MediaQuery.of(context).size.width * 0.9,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: SizedBox(
                                        child: GestureDetector(
                                          onTap: () {
                                            context.read<ChangeScreenBloc>().add(ChangeImageEvent());
                                          },
                                          child: BlocBuilder<ChangeScreenBloc, ChangeScreenState>(
                                            builder: (context, state) {
                                              return Image.asset(
                                                state.imagePath,
                                                fit: BoxFit.contain,
                                                width: MediaQuery.of(context).size.width * 0.8,
                                              );
                                            },
                                          ),
                                        )
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Seu texto aqui',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: SizedBox(
                                      child: Image.asset(
                                        'assets/images/espaco_texto_branco.png',
                                        //'$state.imagePath',
                                        fit: BoxFit.contain,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Seu texto aqui',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: SizedBox(
                                      child: Image.asset(
                                        'assets/images/espaco_texto_branco.png',
                                        //'$state.imagePath',
                                        fit: BoxFit.contain,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Seu texto aqui',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1),
                                    child: SizedBox(
                                      child: Image.asset(
                                        'assets/images/espaco_texto_branco.png',
                                        //'$state.imagePath',
                                        fit: BoxFit.contain,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Seu texto aqui',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/Bpular.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/Bpular.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/Bpular.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/Bpular.png',
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
