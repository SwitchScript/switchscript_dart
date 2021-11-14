import 'package:switchscript/switchscript.dart';
void main() async {
  // jika tidak ada option tetap bisa fetch dengan default method get
  var option = {
    "method": "get"
  };
  var fetch =
      await UrlFetchApp.fetch("https://reqres.in/api/users?page=2", option);
  print(fetch.body);
}
