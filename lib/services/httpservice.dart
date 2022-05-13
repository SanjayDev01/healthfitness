// ignore_for_file: file_names, use_rethrow_when_possible

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class HttpService {
  static Dio dio = Dio();

  static Future<Response> hPost(String url, data) async {
    var logger = Logger();
    try {
      Map<String, String> headers;

      headers = {
        "X-Api-Key": "f6d646a6c2f2df883ea0cccaa4097358ede98284",
      };
      Response res =
          await dio.post(url, data: data, options: Options(headers: headers));

      return res;
    } on DioError catch (e) {
      logger.d(e);
      throw (e);
    }
  }
}
