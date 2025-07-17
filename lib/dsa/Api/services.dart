// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class AdviceService {
//   static Future<String> fetchAdvice() async {
//     final url = Uri.parse('https://api.adviceslip.com/advice');
//     final res = await http.get(url);

//     if (res.statusCode == 200) {
//       final data = jsonDecode(res.body);
//       return data['slip']['advice'];
//     } else {
//       return 'Failed to load advice';
//     }
//   }
// }
import 'dart:convert';

import 'package:http/http.dart' as http;

class AdviceServices {
  static Future<String> fetchAdvice() async {
    final url = Uri.parse("h");
    final respnse = await http.get(url);
    if (respnse.statusCode == 200) {
      final data = jsonDecode(respnse.body);
      return data['slip']['advice'];
    } else {
      return "failed to load advice";
    }
  }
}
