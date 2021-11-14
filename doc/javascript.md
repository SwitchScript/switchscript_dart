# Javascript

## Quickstart

```dart


```



## Example

### ifjs
```dart 
import 'package:switchscript/switchscript.dart';

void main() {
  var data = "saasa";
  print(ifjs(data)); // return true karena ada data
  print(ifjs("")); // return false karena tidak ada data
  print(ifjs(0)); // return false karena 0
  print(ifjs("0")); // return true karena ada data di string
  print(ifjs(-123)); // return true karena ada angka
  print(ifjs(1234567)); // return true
  print(ifjs({})); // return false karena datanya kosong
  print(ifjs({"azka": "oke"})); // return true
  print(ifjs([])); // return false
  print(ifjs(null)); // return false
}
```