# Switch Script

---

<p align="center">
    <a href="https://github.com/azkadev"><img title="Author" src="https://img.shields.io/badge/AUTHOR-AZKADEV-orange.svg?style=for-the-badge&logo=github"></a>
</p>

<br>

[![Custom badge](https://img.shields.io/badge/youtube-%23FF0000.svg?&style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/user/azkadev/)
[![Custom badge](https://img.shields.io/badge/instagram-%23E4405F.svg?&style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/azkadev/)
[![Custom badge](https://img.shields.io/badge/twitter-%231DA1F2.svg?&style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/azkadev/)
[![Custom badge](https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white)](https://t.me/azkadev)
[![Custom badge](https://img.shields.io/badge/Website-FF7139?style=for-the-badge&logo=Firefox-Browser&logoColor=white)](https://azkadev.com/)
[![Custom badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/azkadev)


# Donate

**ID**: Jika Anda Menyukai karya saya dan ingin memberikan dana untuk saya membeli beberapa snack silahkan donasi seberapapun itu akan saya terima dan terima kasih banyak ya.

**EN**: If you like my work and want to give me funds to buy some snacks, please donate any amount I will accept and thank you very much.

[![Github-sponsors-Badge](https://img.shields.io/badge/sponsor-30363D?style=for-the-badge&logo=GitHub-Sponsors&logoColor=#EA4AAA)](https://www.paypal.com/paypalme/azkadev)
[![Paypal-Badge](https://img.shields.io/badge/paypal-%2300457C.svg?&style=for-the-badge&logo=paypal&logoColor=white)](https://www.paypal.com/paypalme/azkadev)


# Framework

**ID**: Project ini Menggunakan beberapa bahasa framework sebagai berikut.

**EN**: This project uses several framework as follows.

[![Custom badge](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)

# Language Code

**ID**: Project ini Menggunakan beberapa bahasa code program sebagai berikut.

**EN**: This project uses several programming language languages as follows.

![Dart-Badge](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

# Introduction

**ID**: switchscript adalah library untuk memudahkan dalam devlopment di dart dengan tambahan syntax dan beberapa method yang telah di rubah agar lebih mudah di pakai.

**EN**: switchscript is a library to make it easier to develop on darts with additional syntax and some methods that have been changed to make it easier to use.

---

# Use This Library

**ID**: untuk anda yang ingin mencoba menggunakan source code ini, silahkan ikuti step berikut ini :

**EN**: for those of you who want to try to using this source code, please follow these steps :

##### Documentations

- [Github](https://github.com/SwitchScript/switchscript_dart/tree/main/doc)
- [Website](https://github.com/azkadev)

##### Install Library
```bash
flutter pub add switchscript
```

##### Quickstart

```dart
import 'package:switchscript/switchscript.dart';

void main() async {
  var option = {
    "method": "get",
  };
  var fetch = await UrlFetchApp.fetch(
      "https://jsonplaceholder.typicode.com/posts", option);
  console.log(fetch.body);
  console.log("hallo".toBoolean);
  console.log({}.isType);
  console.log("hallo gays".encode.Base64);
}
```

---
<br>

## Contribution

The project has a separate contribution file. Please adhere to the steps listed in the separate contributions [file](./CONTRIBUTING.md)

## Contact

You can reach me on [Telegram](https://t.me/gibranalazka)

## License

[![Licence](https://img.shields.io/github/license/azkadev/markdown-badges?style=for-the-badge)](./LICENSE)