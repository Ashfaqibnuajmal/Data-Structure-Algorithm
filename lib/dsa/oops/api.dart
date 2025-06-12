// class Post {
//   final int id;
//   final String title;
//   final String body;

//   Post({required this.id, required this.title, required this.body});

//   // Factory for converting JSON to Dart object
//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<Post> fetchPost() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   var response = await http.get(url);

//   if (response.statusCode == 200) {
//     return Post.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to load post');
//   }
// }
// // void main() async {
// //   Post post = await fetchPost();
// //   print(post.title); // Prints the title
// // }

// final response = await http.post(
//   url,
//   headers: {
//     'Content-Type': 'application/json',
//     'Authorization': 'Bearer your_authentication_token',
//   },
//   body: json.encode({
//     'key1': 'value1',
//     'key2': 'value2',
//   }),
// );

// import 'dart:async';

// class Debouncer {
//   Timer? _timer;

//   run(VoidCallback action, {int milliseconds = 500}) {
//     _timer?.cancel();
//     _timer = Timer(Duration(milliseconds: milliseconds), action);
//   }
// }
