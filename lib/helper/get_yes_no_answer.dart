import 'package:flutter_api_yesorno/domain/entities/respuesta.dart';
import 'package:dio/dio.dart';

class GetYesorNoAnswer {
  final String url = "https://yesno.wtf/api";
  final _dio = Dio();
  //http get
  Future<Respuesta> getRespuesta() async {
    final response = await _dio.get(url);
    final respuestaYesOrNo = Respuesta.fromJson(response.data);
    return respuestaYesOrNo;
  }
}
