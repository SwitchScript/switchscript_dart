import 'package:switchscript/switchscript.dart';

void main() {
  var tanggal = date(DateTime.now().millisecondsSinceEpoch);
  print(tanggal.toJson());
  print(tanggal.day);
}
