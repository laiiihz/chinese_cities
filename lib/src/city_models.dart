// GENERATED CODE - DO NOT MODIFY BY HAND
///ProvinceModel 省
class Province {
  const Province(this.name, this.children);

  final String name;

  final List<City> children;

  @override
  String toString() {
    return '$name include ${children.length} city';
  }
}

///CityModel 市
class City {
  const City(this.name, this.code, this.children);

  final String name;

  final String code;

  final List<County> children;

  @override
  String toString() {
    return '$code:$name include ${children.length} county';
  }
}

///CountyModel 县
class County {
  const County(this.name, this.code);

  final String name;

  final String code;
  @override
  String toString() {
    return '$code:$name';
  }
}
