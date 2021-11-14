part of switchscript;

extension ListLoopExtension<E> on List<E> {
  // ignore: non_constant_identifier_names, use_function_type_syntax_for_parameters
  loop(Callback(value, index)) {
    if (toBoolean) {
      for (var i = 0; i < length; i++) {
        Callback(this[i], i);
      }
    }
  }
}

extension ListEncodeDecodeExtension<E> on List<E> {
  Encode get encode {
    return Encode(this);
  }

  Decode get decode {
    return Decode(this);
  }
}

extension ListIsTypeExtension<E> on List<E> {
  get isType {
    return runtimeType
        .toString()
        .toLowerCase()
        .replaceAll(RegExp(r"<.*"), "")
        .replaceAll(RegExp(r"_internallinkedhashmap"), "object")
        .replaceAll(RegExp(r"_"), "");
  }
}

extension ListToBooleanExtension<E> on List<E> {
  bool get toBoolean {
    return isNotEmpty;
  }
}


// Source: https://stackoverflow.com/questions/17476718/how-do-get-a-random-element-from-a-list-in-dart
extension RandomListItem<T> on List<T> {
  T get random {
    return this[math.Random().nextInt(length)];
  }
}