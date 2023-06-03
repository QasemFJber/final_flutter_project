// import 'dart:convert';
// import "package:http/http.dart" as http;
//
// class APIHandler {
//   final String baseUrl = 'https://api.example.com';
//   Future<dynamic> fetchData(String endpoint) async {
//     final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
//
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data from API');
//     }
//   }

//   Future<dynamic> postData(String endpoint, dynamic data) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/$endpoint'),
//       body: json.encode(data),
//       headers: {'Content-Type': 'application/json'},
//     );
//
//     if (response.statusCode == 201) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to post data to API');
//     }
//   }
// }
