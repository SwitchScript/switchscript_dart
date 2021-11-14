part of switchscript;

class UrlFetchApp {
  static Future<_HttpFetch> fetch(url, [Map options = const {}]) async {
    if (!ifjs(options)) {
      var result = await http.get(Uri.parse(url));
      return _HttpFetch(result.statusCode, result.body, result.headers);
    } else {
      if (options.containsKey("method")) {
        if (options["method"].toString().toLowerCase() == "post") {
          var result = await http.post(Uri.parse(url),
              headers: options["header"],
              body: options["body"],
              encoding: options["encode"]);
          return _HttpFetch(result.statusCode, result.body, result.headers);
        } else if (options["method"].toString().toLowerCase() == "get") {
          var result =
              await http.get(Uri.parse(url), headers: options["header"]);
          return _HttpFetch(result.statusCode, result.body);
        } else if (options["method"].toString().toLowerCase() == "delete") {
          var result = await http.delete(Uri.parse(url),
              headers: options["header"],
              body: options["body"],
              encoding: options["encode"]);
          return _HttpFetch(result.statusCode, result.body, result.headers);
        } else if (options["method"].toString().toLowerCase() == "head") {
          var result =
              await http.head(Uri.parse(url), headers: options["header"]);
          return _HttpFetch(result.statusCode, result.body, result.headers);
        } else if (options["method"].toString().toLowerCase() == "patch") {
          var result = await http.patch(Uri.parse(url),
              headers: options["header"],
              body: options["body"],
              encoding: options["encode"]);
          return _HttpFetch(result.statusCode, result.body, result.headers);
        } else if (options["method"].toString().toLowerCase() == "put") {
          var result = await http.put(Uri.parse(url),
              headers: options["header"],
              body: options["body"],
              encoding: options["encode"]);
          return _HttpFetch(result.statusCode, result.body, result.headers);
        } else {
          var result = await http.get(Uri.parse(url));
          return _HttpFetch(result.statusCode, result.body, result.headers);
        }
      } else {
        var result = await http.get(Uri.parse(url));
        return _HttpFetch(result.statusCode, result.body, result.headers);
      }
    }
  }
}

class _HttpFetch {
  final int _statusCode;
  // ignore: unused_field, prefer_typing_uninitialized_variables
  final _body;
  final _headers;
  _HttpFetch(this._statusCode, [this._body, this._headers]);

  int get statusCode {
    return _statusCode;
  }

  get body {
    return _body;
  }

  get headers {
    return _headers;
  }
}
