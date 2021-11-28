library switchscript;

// native library
import 'dart:convert' as convert;
import 'dart:math' as math;

// 3 library
import 'package:http/http.dart' as http;
import 'dart:math' as math;
//--! Utils
part 'utils/encode_decode.dart';
part 'utils/date.dart';
part 'utils/fetch.dart';

part 'utils/human.dart';
//--! scripts
part 'scripts/javascript/javascript.dart';

//--! Extenstion 
part 'extension/string.dart';
part "extension/map.dart";
part 'extension/list.dart';
part 'extension/num.dart';
part 'extension/bool.dart';
part 'extension/dynamic.dart';