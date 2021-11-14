# Example Fetch


## Quickstart

```dart
import 'package:switchscript/switchscript.dart';
void main() async {
  var fetch = await UrlFetchApp.fetch("https://reqres.in/api/users?page=2");
  print(fetch.body);
}
```

## Fetch Get

```dart
import 'package:switchscript/switchscript.dart';
void main() async {
  // jika tidak ada option tetap bisa fetch dengan default method get
  var option = {
    "method": "get"
  };
  var fetch =
      await UrlFetchApp.fetch("https://reqres.in/api/users?page=2", option);
  print(fetch.body);
}
```

## Fetch Post

```dart
import 'package:switchscript/switchscript.dart';
import 'dart:convert';

void main() async { 
  var body = {
      "pkg": "switchscript"
  };
  var option = {
    var option = {
      "method": "post",
      "header": {
        'Accept': 'application/json',
        "Content-Type": "application/json",
      },
      "body": json.encode(body)
    };
  };
  var fetch =
      await UrlFetchApp.fetch("https://reqres.in/api/users?page=2", option);
  print(fetch.statusCode); // return int
  print(fetch.body); // return dynamic
}
```


## Doc