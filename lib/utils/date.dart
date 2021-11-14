part of switchscript;

class date {
  var timestamp;
  date(this.timestamp);

  toJson() {
    if (timestamp.toString().toLowerCase() == "now") {
      timestamp = DateTime.now().millisecondsSinceEpoch;
    }
    var now = DateTime.fromMillisecondsSinceEpoch(timestamp);
    var bulan = [
      'Desember',
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November'
    ];
    var suasana = [
      'Pagi',
      'Pagi',
      'Pagi',
      'Pagi',
      'Pagi',
      'Pagi',
      'Pagi',
      'Pagi',
      'Pagi',
      'Pagi',
      'Siang',
      'Siang',
      'Siang',
      'Siang',
      'Siang',
      'Siang',
      'Sore',
      'Sore',
      'Sore',
      'Malam',
      'Malam',
      'Malam',
      'Malam',
      'Malam'
    ];
    var json = {};
    var hari = [
      "Minggu",
      "Senin",
      "Selasa",
      "Rabu",
      "Kamis",
      "Jum'at",
      "Sabtu"
    ];
    json["year"] = now.year;
    json["month"] = bulan[now.month];
    json["num_month"] = now.month;
    json["num_date"] = now.day;
    json["day"] = hari[now.weekday];
    json["suasana"] = suasana[now.hour];
    json["hour"] = now.hour;
    json["minute"] = now.minute;
    json["second"] = now.second;
    json["original"] = timestamp;
    return json;
  }

  int get year {
    return toJson()["year"];
  }

  String get month {
    return toJson()["month"];
  }

  int get numMonth {
    return toJson()["num_month"];
  }

  int get numDate {
    return toJson()["num_date"];
  }

  String get day {
    return toJson()["day"];
  }

  String get suasana {
    return toJson()["suasana"];
  }

  int get hour {
    return toJson()["hour"];
  }

  int get minute {
    return toJson()["minute"];
  }

  int get second {
    return toJson()["second"];
  }

  get original {
    return toJson()["original"];
  }
}
