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

## Docs

- Fetch
```dart
// return future, params string url and Map option
UrlFetchApp.fetch("stringurl", { "method": "post" });
```
- Option
  Map<String, dynamic>
  Example
  ```dart
  var body = {
      "pkg": "switchscript"
  };
  var option = {
    "method": "post",
    "header": {
      'Accept': 'application/json',
      "Content-Type": "application/json",
    },
    "body": json.encode(body)
  };
  ```
  - method
    default method is get, and value must be string
    ```get``` ```post``` ```delete``` ```put``` ```head```
  - header
    default is null, and value Map<String, String>
    ```dart
    {
      "Accept": "application/json",
      "Content-Type": "application/json",
    }
    ```
  - body
    default is null, and value must be encode using this library ```import 'dart:convert';```
    ```dart
    var body = {
      "key": "hello"
    };
    json.encode(body)
    ```
- Method
  - body
    return String body
  - statusCode
    return int eg ```200``` ```400``` ```404```

