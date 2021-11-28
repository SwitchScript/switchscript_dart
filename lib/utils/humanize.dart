part of switchscript;

class Humanize {
  static String numberReadable(int n) {
    if (n < 1000) return n.toString();
    if (n < 10000) {
      final s = (n / 1000).toStringAsFixed(1);
      if (s[s.length - 1] == '0') {
        return s.substring(0, s.length - 2) + "K";
      }
      return s + "K";
    }
    if (n < 1000000) {
      return (n / 1000).toStringAsFixed(0) + "K";
    }

    // 1,000,000s
    if (n < 10000000) {
      final s = (n / math.pow(1000, 2)).toStringAsFixed(1);
      if (s[s.length - 1] == '0') {
        return s.substring(0, s.length - 2) + "M";
      }
      return s + "M";
    }
    if (n < 1000000000) {
      return (n / math.pow(1000, 2)).toStringAsFixed(0) + "M";
    }

    // 1,000,000,000s
    if (n < 10000000000) {
      final s = (n / math.pow(1000, 3)).toStringAsFixed(1);
      if (s[s.length - 1] == '0') {
        return s.substring(0, s.length - 2) + "B";
      }
      return s + "B";
    }
    if (n < 1000000000000) {
      return (n / math.pow(1000, 3)).toStringAsFixed(0) + "B";
    }

    // 1,000,000,000,000s
    if (n < 10000000000000) {
      final s = (n / math.pow(1000, 4)).toStringAsFixed(1);
      if (s[s.length - 1] == '0') {
        return s.substring(0, s.length - 2) + "T";
      }
      return s + "T";
    }
    if (n < 1000000000000000) {
      return (n / math.pow(1000, 4)).toStringAsFixed(0) + "T";
    }

    return (n / math.pow(1000, 5)).toStringAsFixed(0) + "Q";
  }

  static String fileSize(dynamic size, [int round = 2]) {
    /** 
   * [size] can be passed as number or as string
   *
   * the optional parameter [round] specifies the number 
   * of digits after comma/point (default is 2)
   */
    var divider = 1024;
    int _size;
    try {
      _size = int.parse(size.toString());
    } catch (e) {
      throw ArgumentError('Can not parse the size parameter: $e');
    }

    if (_size < divider) {
      return '$_size B';
    }

    if (_size < divider * divider && _size % divider == 0) {
      return '${(_size / divider).toStringAsFixed(0)} KB';
    }

    if (_size < divider * divider) {
      return '${(_size / divider).toStringAsFixed(round)} KB';
    }

    if (_size < divider * divider * divider && _size % divider == 0) {
      return '${(_size / (divider * divider)).toStringAsFixed(0)} MB';
    }

    if (_size < divider * divider * divider) {
      return '${(_size / divider / divider).toStringAsFixed(round)} MB';
    }

    if (_size < divider * divider * divider * divider && _size % divider == 0) {
      return '${(_size / (divider * divider * divider)).toStringAsFixed(0)} GB';
    }

    if (_size < divider * divider * divider * divider) {
      return '${(_size / divider / divider / divider).toStringAsFixed(round)} GB';
    }

    if (_size < divider * divider * divider * divider * divider &&
        _size % divider == 0) {
      num r = _size / divider / divider / divider / divider;
      return '${r.toStringAsFixed(0)} TB';
    }

    if (_size < divider * divider * divider * divider * divider) {
      num r = _size / divider / divider / divider / divider;
      return '${r.toStringAsFixed(round)} TB';
    }

    if (_size < divider * divider * divider * divider * divider * divider &&
        _size % divider == 0) {
      num r = _size / divider / divider / divider / divider / divider;
      return '${r.toStringAsFixed(0)} PB';
    } else {
      num r = _size / divider / divider / divider / divider / divider;
      return '${r.toStringAsFixed(round)} PB';
    }
  }
}
