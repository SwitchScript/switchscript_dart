part of switchscript;

class Encode {
  // ignore: prefer_typing_uninitialized_variables
  var value;
  Encode(this.value);
  // ignore: non_constant_identifier_names
  List<int> get Utf8 {
    return convert.utf8.encode(value.toString());
  }

  // ignore: non_constant_identifier_names
  String get Base64 {
    return convert.base64.encode(Utf8);
  }
}

class Decode {
  // ignore: prefer_typing_uninitialized_variables
  var value;
  Decode(this.value);

  // ignore: non_constant_identifier_names
  String get Utf8 {
    return convert.utf8.decode(value);
  }

  // ignore: non_constant_identifier_names
  List<int> get Base64 {
    return convert.base64.decode(value);
  }
}
