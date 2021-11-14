part of switchscript;

/*
*
*
*
*/

extension StringEncodeDecodeExtension on String? {
  Encode get encode {
    return Encode(this);
  }

  Decode get decode {
    return Decode(this);
  }
}

extension StringIstypeExtension on String? {
  get isType {
    return runtimeType
        .toString()
        .toLowerCase()
        .replaceAll(RegExp(r"<.*"), "")
        .replaceAll(RegExp(r"_internallinkedhashmap"), "object")
        .replaceAll(RegExp(r"_"), "");
  }
}

extension StringToIntExtension on String {
  /// Parses the string as an [int] number and returns the result.
  ///
  /// The [radix] must be in the range 2..36. The digits used are
  /// first the decimal digits 0..9, and then the letters 'a'..'z' with
  /// values 10 through 35. Also accepts upper-case letters with the same
  /// values as the lower-case ones.
  ///
  /// If no [radix] is given then it defaults to 10.
  toInt({int? radix}) {
    try {
      return int.parse(this, radix: radix);
    } catch (e) {
      return int;
    }
  }
}

extension ToBooleanExtension on String? {
  bool get toBoolean {
    if (this!.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
