import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var url = Uri.https("jsonplaceholder.typicode.com", "todos");

  var res = await http.get(url);

  var decodedData = await json.decode(res.body);
  //print(res.body);

  //print(decodedData);
  print(decodedData[0]);

  await decodedData.forEach((elem) {
    print("================================");
    print(elem["id"]);
    print(elem["title"]);
  });
}