import 'dart:convert';
import 'package:http/http.dart' as http;

class Album {
  final int id;
  final String title;

  Album({required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

Future<List<Album>> fetchSampleAlbums() async {
  await Future.delayed(Duration(seconds: 2));
  List<Album> sampleAlbums = [
    Album(id: 0, title: 'Fathan Askar (1301213374) IF-45-04'),
    Album(id: 1, title: 'Greatest Hits'),
    Album(id: 2, title: 'Summer Vibes'),
    Album(id: 3, title: 'Classic Rock'),
    Album(id: 4, title: 'Pop Essentials'),
    Album(id: 5, title: 'Jazz Classics'),
  ];
  return sampleAlbums;
}

Future<List<Album>> fetchAlbums() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    Iterable jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((album) => Album.fromJson(album)).toList();
  } else {
    throw Exception('Failed to load albums');
  }
}

Future<http.Response> deleteAlbum(int id) async {
  final response = await http.delete(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  return response;
}

Future<http.Response> createAlbum(String title) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
  return response;
}

Future<http.Response> updateAlbum(int id, String title) async {
  final response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
  return response;
}
