import 'package:http/http.dart' as http;
import 'dart:convert';

class AdviceService {
  static Future<String> fetchAdvice() async {
    final url = Uri.parse('https://api.adviceslip.com/advice');
    final res = await http.get(url);

    if (res.statusCode == 200) {
      final data = jsonDecode(res.body);
      return data['slip']['advice'];
    } else {
      return 'Failed to load advice';
    }
  }
}
