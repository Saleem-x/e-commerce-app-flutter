import 'package:http/http.dart' as http;

getbanners() async {
  final response =
      http.get(Uri.parse('https://test.strideave.shop/banner/active'));
}
