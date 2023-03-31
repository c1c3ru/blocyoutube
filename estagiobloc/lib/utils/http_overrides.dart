import 'dart:io';

import 'package:http/http.dart' as http;

class HttpOverridesGlobal extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    HttpClient client = super.createHttpClient(context);
    client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    return client;
  }
}

class CustomHttp {
  static final CustomHttp _singleton = CustomHttp._internal();

  factory CustomHttp() {
    return _singleton;
  }

  CustomHttp._internal() {
    HttpOverrides.global = HttpOverridesGlobal();
  }

  Future<http.Response> get(String url) {
    return http.get(Uri.parse(url));
  }

  Future<http.Response> post(String url, {Map<String, String>? headers, Object? body}) {
    return http.post(Uri.parse(url), headers: headers, body: body);
  }

  Future<http.Response> put(String url, {Map<String, String>? headers, Object? body}) {
    return http.put(Uri.parse(url), headers: headers, body: body);
  }

  Future<http.Response> delete(String url, {Map<String, String>? headers}) {
    return http.delete(Uri.parse(url), headers: headers);
  }
}
