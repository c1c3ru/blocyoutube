import 'dart:async';

import 'package:dio/dio.dart';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'dataJson.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const Estagio());
}

var link = ListDados.getData;

class Estagio extends StatelessWidget {
  const Estagio({Key? key}) : super(key: key);

  void initState() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estagio',
      theme: ThemeData(
        textTheme: GoogleFonts.sourceCodeProTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Estagioapp(
        title: 'App para baixar documentos do estágio',
      ),
    );
  }
}

class Estagioapp extends StatefulWidget {
  const Estagioapp({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Estagioapp> createState() => _EstagioappState();
}

class _EstagioappState extends State<Estagioapp> {
  // String progress = "0";
  final Dio dio = Dio();

  // int contador = 0;
  late TargetPlatform? platform;

  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) {
      platform = TargetPlatform.android;
    } else {
      platform = TargetPlatform.iOS;
    }
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.green,
            Colors.red,
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: topPadding,
              ),
              const SizedBox(
                height: 5,
              ),
              //const AnimatedImage(),
              // Container(),
              Expanded(
                child: ListView.builder(
                  itemCount: link.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              top:
                                  BorderSide(width: 2.0, color: Colors.black12),
                            ),
                            color: Colors.white38,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Stack(children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 1, top: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              const Spacer(),
                                              nameChange(link[index]),
                                              const Spacer(),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              textSide(link[index])
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget avatar(data) {
    return Align(
      alignment: Alignment.topLeft,
      child: CircleAvatar(
        radius: 60.0,
        backgroundImage: AssetImage('${data['name']}'),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget nameChange(data) {
    return Align(
      alignment: Alignment.topRight,
      child: RichText(
        text: TextSpan(
          text: '${data['subtitulo']}',
          style: const TextStyle(
              fontFamily: 'SourceSansPro-Regular',
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              fontSize: 17),
          children: <TextSpan>[
            TextSpan(
              text: '\n${data['titulo']}',
              style: TextStyle(
                color: data['changeColor'],
                fontFamily: 'Source Code Pro',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<File?> downloadFile(data, local) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$local');

    try {
      final response = await Dio().get(
        data,
        onReceiveProgress: mostrarDownload,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
        ),
      );
      final arquivo = file.openSync(mode: FileMode.write);
      arquivo.writeFromSync(response.data);
      await arquivo.close();

      return file;
    } catch (e) {
      return null;
    }
  }

  Future download(Dio dio, linkURL) async {
    try {
      Response response = await dio.get(
        linkURL,
        onReceiveProgress: mostrarDownload,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: true,
            validateStatus: (status) {
              return status! < 500;
            }),
      );
      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<String?> getDownloadPath() async {
    Directory? pasta;
    try {
      if (Platform.isIOS) {
        pasta = await getApplicationDocumentsDirectory();
      } else {
        pasta = Directory('/storage/emulated/0/Download');
        if (!await pasta.exists()) {
          pasta = await getExternalStorageDirectory();
        }
        final file = File('${pasta?.path}/');
        final arquivo = file.openSync(mode: FileMode.write);
        await arquivo.close();
      }
    } catch (err, stack) {
      if (kDebugMode) {
        print('erro no caminho');
        print('Path: $pasta');
      }
    }
    return pasta?.path;
  }

  downloadBook({String? downloadLink, String? title}) async {
    try {
      if (await Permission.storage.request().isGranted) {
        final downloadPath = await getDownloadPath();
        //final file = File('${downloadPath?.path}/');

        if (kDebugMode) {
          print('error: $downloadPath');
        }

        var dio = Dio();
        await dio.download(downloadLink!, downloadPath).then((value) {
          dio.close();
        });
      }
    } catch (e) {
      if (kDebugMode) {
        print('error: $e');
      }
    }
  }

  void mostrarDownload(received, total) {
    if (total != -1) {
      if (kDebugMode) {
        print((received / total * 100).toStringAsFixed(0) + '%');
      }
    }
  }

  /// A function that returns a widget.
  Widget textSide(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 1.0),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () => downloadBook(
                  downloadLink: '${data['link']}', title: '${data['arquivo']}'),
              child: const Text('down'),
            ),
            ElevatedButton(
              onPressed: () => download(dio, '${data['link']}'),
              child: const Text('down 01'),
            ),
            ElevatedButton(
              onPressed: () {
                getDownloadPath();
                download(dio, '${data['link']}');
              },
              child: const Text('down 02'),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  AnimatedImageState createState() => AnimatedImageState();
}

class AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(2.30, -0.30),
  ).animate(
    CurvedAnimation(parent: controller, curve: Curves.easeInCirc),
  );

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/nuvens.png'),
        const SizedBox(height: 5),
        SlideTransition(
          position: animation,
          child: Image.asset('assets/rocket.png'),
        ),
      ],
    );
  }
}
