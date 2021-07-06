export 'src/city_models.dart';
export 'src/models.dart';

import 'package:chinese_cities/src/city_models.dart';
import 'package:chinese_cities/src/models.dart';

class ChineseCities {
  static bool _sameName(String targetA, String targetB) =>
      targetA.contains(targetB);

  ///通过名称获取省
  static List<Province> getProvinceByName(String name) => cities
      .where(
        (element) => _sameName(element.name, name),
      )
      .toList();

  ///通过名称获取市
  static List<City> getCityByName(String name) {
    var result = <City>[];
    for (var item in cities) {
      result.addAll(
          item.children.where((element) => _sameName(element.name, name)));
    }
    return result;
  }

  ///通过名称获取县
  static List<County> getCountyByName(String name) {
    var result = <County>[];
    for (var item in cities) {
      for (var city in item.children) {
        result.addAll(
            city.children.where((element) => _sameName(element.name, name)));
      }
    }
    return result;
  }

  ///通过code获取市
  static List<City> getCityByCode(String code) {
    var result = <City>[];
    for (var item in cities) {
      result.addAll(
          item.children.where((element) => _sameName(element.name, code)));
    }
    return result;
  }

  ///通过code获取县
  static List<County> getCountyByCode(String code) {
    var result = <County>[];
    for (var item in cities) {
      for (var city in item.children) {
        result.addAll(
            city.children.where((element) => _sameName(element.name, code)));
      }
    }
    return result;
  }
}
