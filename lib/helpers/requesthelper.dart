// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';

class RequestHelper {
  static Future<dynamic> getHttp(String url) async {
    try {
      Response<dynamic> response = await Dio().get(url);
      if (response.statusCode == 200) {
        dynamic data = response.data;
        dynamic decodedData = jsonDecode(data);
        return decodedData;
      } else {
        log('response');
        return 'failed';
      }
    } catch (e) {
      return 'failed';
    }
  }
}
