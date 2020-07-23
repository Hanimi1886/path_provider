import 'dart:io';
import 'package:flutter/material.dart';
import 'package:downloads_path_provider/downloads_path_provider.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  PermissionHandlerPlatform _platform = PermissionHandlerPlatform.instance;
  Directory _directory;
  String url =
      'https://c4.wallpaperflare.com/wallpaper/594/527/696/movies-joaquin-phoenix-joker-joker-2019-movie-men-hd-wallpaper-preview.jpg';
  var process = 0;
  dynamic path;
  @override
  void initState() {
    super.initState();
    getPath();
  }

  Future<Directory> getPath() async {
    Directory directory;
    try {
      directory = await DownloadsPathProvider.downloadsDirectory;
    } on PlatformException {
      print('could not get download directory');
    }
    //  if (!mounted) return;
    setState(() {
      _directory = directory;
    });

    return _directory;
  }

  Future<void> download() async {
    var dio = Dio();
    path = await getPath();
    String fileName = 'joker.jpg';
  // String paths = path.join(path,fileName);
    //  final savePath = path.join(_directory.path, _fileName);
    final respons = await dio.download(
      url,
      path.path,
      onReceiveProgress: (count, total) {
        setState(() {
          process = (count / total * 100).toInt();
          if (process == 100) {
            print('successful download');
          } else {
            print('sorry unable to download it');
          }
        });
      },
    );
    return respons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('quicker'),
          ),
          body: Column(children: <Widget>[
            Center(
              child: Text('splash screen'),
            ),
            Text(_directory != null
                ? '${_directory.path}'
                : 'could not get such directory'),
            RaisedButton(
                child: Text('download'),
                onPressed: () {
                  download();
                })
          ])),
    );
  }
}
