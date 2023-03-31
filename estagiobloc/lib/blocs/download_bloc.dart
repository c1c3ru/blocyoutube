import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'link.dart';

class DownloadBloc extends Bloc<double, List<Link>> {
  DownloadBloc() : super([]);

  Future<void> startDownload(Link link) async {
    final dio = Dio();
    final fileName = link.url.split('/').last;
    final path = await _findLocalPath();
    await _prepareSaveDir();

    final response = await dio.download(
      link.url,
      '$path/$fileName',
      onReceiveProgress: (received, total) {
        if (total != -1) {
          final progress = received / total;
          add(progress);
        }
      },
    );

    if (response.statusCode == HttpStatus.ok) {
      final downloadedLink = link.copyWith(isDownloaded: true);
      final newState = [...state];
      final index = newState.indexOf(link);
      newState[index] = downloadedLink;
      emit(newState);
    }
  }

  Future<void> _prepareSaveDir() async {
    final localPath = (await _findLocalPath())!;
    final savedDir = Directory(localPath);
    final hasExisted = await savedDir.exists();
    if (!hasExisted) {
      savedDir.create();
    }
  }

  Future<String?> _findLocalPath() async {
    if (Platform.isAndroid) {
      return '/sdcard/download';
    } else {
      final directory = await getApplicationDocumentsDirectory();
      return '${directory.path}${Platform.pathSeparator}Download';
    }
  }
}
