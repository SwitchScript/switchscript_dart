part of switchscript;

extension EncodeDecode<K, V> on Map<K, V> {
  Encode get encode {
    return Encode(this);
  }

  Decode get decode {
    return Decode(this);
  }
}

extension Loop<K, V> on Map<K, V> {
  loop(void Function(dynamic key, dynamic value, dynamic index) callback) {
    if (toBoolean) {
      var index = 0;
      forEach((key, value) {
        // ignore: void_checks
        return callback(key, value, index);
      });
    }
  }
}

extension IsType<K, V> on Map<K, V> {
  get isType {
    return runtimeType
        .toString()
        .toLowerCase()
        .replaceAll(RegExp(r"<.*"), "")
        .replaceAll(RegExp(r"_internallinkedhashmap"), "object")
        .replaceAll(RegExp(r"_"), "");
  }
}

extension ToBoolean<K, V> on Map<K, V> {
  bool get toBoolean {
    return isNotEmpty;
  }
}
