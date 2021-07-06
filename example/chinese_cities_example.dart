import 'package:chinese_cities/chinese_cities.dart';

void main() {
  print(cities.first.name);
  print(ChineseCities.getProvinceByName('浙江'));
  print(ChineseCities.getCityByName('辖'));
  print(ChineseCities.getCountyByName('东城'));
}
