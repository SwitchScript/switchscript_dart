# Extenstion

## Quickstart
```dart
import 'package:switchscript/switchscript.dart';

void main() {
  print("azka");
  print(1212.isType);
  print("azka".toBoolean);
}
```

## Docs

- Method List:
    - encode
        available Method ```Utf8``` ```Base64```
        eg:
        ```dart
        print("azka".encode.Base64);
        print("zsxrdcfv".encode.Utf8);
        ```
    - decode
        available Method ```Utf8``` ```Base64```
        eg:
        ```dart
        print("YXprYQ==".decode.Base64.decode.Utf8);
        print([122, 115, 120, 114, 100, 99, 102, 118].decode.Utf8);
        ```
    - isType
        eg:
        ```dart
        print("azka".isType);
        ```
    - toBoolean
        eg:
        ```dart
        print("azka".toBoolean);
        ```
