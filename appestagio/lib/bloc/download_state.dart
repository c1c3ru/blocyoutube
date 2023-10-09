part of 'download_bloc.dart';

@immutable
abstract class DownloadState {

  List<Object?> get props => [];
}

class DownloadInitial extends DownloadState {}
class DownloadError extends DownloadState {}
class DownloadSucess extends DownloadState {}
