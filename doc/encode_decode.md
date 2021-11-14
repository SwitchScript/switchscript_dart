# ENCODE AND DECODE

```dart
import 'package:switchscript/switchscript.dart';

void main() {
  var base64 = Encode("azka").Base64;
  print(base64);
  var base64en = Decode(base64).Base64;
  print(Decode(base64en).Utf8);
}
```

## Docs

- Encode
    ```Encode(value);```
    - Method List
        ```Base64``` ```Utf8```
        <br>
        ```dart
        var encode = Encode("azka");
        print(encode.Base64);
        print(encode.Utf8);
        ```
- Decode
    ```Decode(value);```
    - Method List
        ```Base64``` ```Utf8```
        <br>
        ```dart
        var decode = Decode("azka");
        print(decode.Base64);
        print(decode.Utf8);
        ```
