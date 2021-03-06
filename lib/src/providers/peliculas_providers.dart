import 'package:peliculas/src/models/pelicula_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class PeliculasProviders {
  String _apiKey = '229f8d914b3a5d229acc9bfd4063023f';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(_url, '/3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }

  Future<List<Pelicula>> getPopulares() async {
    final url = Uri.https(
        _url, '/3/movie/popular', {'api_key': _apiKey, 'language': _language});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }
}
