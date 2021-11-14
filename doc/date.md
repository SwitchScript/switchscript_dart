# date

## Quickstart
```dart
import 'package:switchscript/switchscript.dart';

void main() {
  var tanggal = date(DateTime.now().millisecondsSinceEpoch);
  print(tanggal.toJson());
  print(tanggal.day);
}
```

```json
{
    "year": 2021, 
    "month": "November", 
    "num_month": 11, 
    "num_date": 14, 
    "day": "Minggu", 
    "suasana": "Malam", 
    "hour": 20, 
    "minute": 19, 
    "second": 13, 
    "original": 1636895953844
}
minggu
```

## Docs

- date
    Parameters class date
    ```date(timestamp);```
    - timestamp
     ```now``` for get time now
     ```1636895953844``` for get time from integrer
- method
    - ```toJson```
        return dynamic map, eg:
        ```dart
        {
            "year": 2021, 
            "month": "November", 
            "num_month": 11, 
            "num_date": 14, 
            "day": "Minggu", 
            "suasana": "Malam", 
            "hour": 20, 
            "minute": 19, 
            "second": 13, 
            "original": 1636895953844
        }
        ```
    - list all method
        ```year``` ```month``` ```num_month``` ```num_date``` ```day``` ```suasana``` ```hour``` ```minute``` ```second``` ```original``` eg:
        <br>
        ```dart
        var tanggal = date("now");
        print(tanggal.year);
        print(tanggal.suasana);
        ```
