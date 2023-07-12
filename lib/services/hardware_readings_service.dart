import 'dart:convert';

import 'package:gas_leak/models/hardware_readings_model.dart';
import 'package:http/http.dart' as http;

class HardwareReadingService {
  Future<HardwareReadingsModel?> getData() async {
    final Uri uri = Uri(
      scheme: 'https',
      host: 'projectpopoola.xyz',
      path: '/iot/getgas',
    );

    try {
      final http.Response response = await http.get(uri);

      if (response.statusCode != 200) {
        throw ('Oops something went wrong!');
      }

      return HardwareReadingsModel.fromJson(json.decode(response.body));
    } catch (e) {
      rethrow;
    }
  }
}
