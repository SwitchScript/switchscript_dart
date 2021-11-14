part of switchscript;

extension BoolEncodeDecodeExtension on bool {
  Encode get encode {
    return Encode(this);
  }

  Decode get decode {
    return Decode(this);
  }
}

extension BoolToBooleanExtension on bool {
  bool get toBoolean {
    return this;
  }
}
