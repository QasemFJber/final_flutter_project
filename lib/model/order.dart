import '../enams/OrderType.dart';

class Order {
  final String name;
  final String date;
  final OrderType type;

  Order(this.name, this.date, this.type);
}
