import 'dart:convert';

import 'package:http/http.dart';


Future<void> readResisteredstudent() async {
  Uri uri = Uri.parse("https://hamon-interviewapi.herokuapp.com/registration/?api_key=Dd15A");
  try {
    var response = await get(uri);
    final data = await json.decode(response.body);
    return data;
  } catch (e) {
    return null;
  }
}