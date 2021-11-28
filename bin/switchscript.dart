import 'dart:convert';
import 'package:switchscript/switchscript.dart';

makeid(length) {
  var result = '';
  var words =
      'a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9';
  var symbols = "- = _ ";
  for (var i = 0; i < length; i++) {
    if ((length / 2) == (i + 1)) {
      result += symbols.split(" ").random.toString();
    } else {
      result += words.split(" ").random.toString();
    }
  }
  return result;
}

void main() async {
  print(HumanUtils.filesize(31942));
}
