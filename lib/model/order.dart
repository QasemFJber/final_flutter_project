import '../enums/OrderType.dart';

class Order {
  String _name;
  String _date;
  OrderType _type;

  Order({required String name, required String date, required OrderType type})
      : _name = name,
        _date = date,
        _type = type;

  String get name => _name;
  String get date => _date;
  OrderType get type => _type;

  set name(String name) {
    _name = name;
  }

  set date(String date) {
    _date = date;
  }

  set type(OrderType type) {
    _type = type;
  }
}
