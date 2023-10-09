import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../bloc/play_sound_bloc.dart';

class PageStart extends StatefulWidget {
  const PageStart({Key? key}) : super(key: key);

  @override
  State<PageStart> createState() => _PageStartState();
}

class _PageStartState extends State<PageStart> {
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
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height / 2,
              child: Image.asset('assets/images/bau_logo.png'),
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
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.10,
                                    width: MediaQuery.of(context).size.width *
                                        0.5,
                                    child: GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<PlaySoundBloc>(context)
                                            .add(ButtonPressedEvent(ButtonType.sucessButton));
                                        Modular.to.navigate('/PageQuestions');
                                      },
                                      child: Image.asset(
                                        'assets/images/botao_novoJogo.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.10,
                                    width: MediaQuery.of(context).size.width *
                                        0.5,
                                    child: GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<PlaySoundBloc>(context)
                                            .add(ButtonPressedEvent(ButtonType.win));
                                        Modular.to.navigate('/PageShopping');
                                      },
                                      child: Image.asset(
                                        'assets/images/botao_loja.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.10,
                                    width: MediaQuery.of(context).size.width *
                                        0.5,
                                    child: GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<PlaySoundBloc>(context)
                                            .add(ButtonPressedEvent(ButtonType.sucessButton));

                                        Modular.to.navigate('/PageAbout');
                                      },
                                      child: Image.asset(
                                        'assets/images/botao_sobre.png',
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
