part of switchscript;

extension NumIsEncodeDecodeInExtension<T extends num> on T {
  Encode get encode {
    return Encode(this);
  }
  Decode get decode {
    return Decode(this);
  }
}

extension NumIsTypeInExtension<T extends num> on T {
  String get isType {
    return runtimeType
        .toString()
        .toLowerCase()
        .replaceAll(RegExp(r"<.*"), "")
        .replaceAll(RegExp(r"_internallinkedhashmap"), "object")
        .replaceAll(RegExp(r"_"), "");
  }
}

extension NumToBooleanInExtension<T extends num> on T {
  get toBoolean {
    if (this < 0) {
      return true;
    } else if (toInt().isOdd) {
      return true;
    } else {
      return false;
    }
  }
}
