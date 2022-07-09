extension StringExt on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !(this == null || this!.isEmpty);

  int get toInt {
    if (isNullOrEmpty) {
      return 0;
    }
    try {
      return int.parse(this!);
    } catch (e) {
      return 0;
    }
  }

  double get toDouble {
    if (isNullOrEmpty) {
      return 0.0;
    }
    try {
      return double.parse(this!);
    } catch (e) {
      return 0.0;
    }
  }

  int get getNumbersOnly {
    final strNumbers = this ?? "".replaceAll(RegExp(r'[^0-9]'), '');
    return strNumbers.toInt;
  }

  String get toCapitalize {
    if (isNullOrEmpty) return "";

    return "${this![0].toUpperCase()}${this!.substring(1).toLowerCase()}";
  }

  String get getFirstName {
    if (isNullOrEmpty) return "";
    return this!.split(" ").first.toCapitalize;
  }

  List<String> get getSeparatedList {
    if (isNullOrEmpty) return [];

    return this!.split(",");
  }

  String get roundIfNonZeroDecimal {
    if (isNullOrEmpty) return "";
    if (!this!.contains('.')) return "";

    final decimal = this!.split('.')[1];
    if (decimal.substring(0, 1).toInt > 0) {
      return toDouble.toStringAsFixed(1);
    } else {
      return toDouble.toStringAsFixed(0);
    }
  }

  String ellipsize(int limit) {
    if (isNullOrEmpty) return '...';
    if (this!.length < limit) return this!;
    return '${this!.substring(0, limit)}...';
  }
}
