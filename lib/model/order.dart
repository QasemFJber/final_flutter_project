import '../enams/OrderType.dart';

class Order {
  String name;
  String date;
  OrderType type;

  Order(this.name, this.date, this.type);
}
//
// enum OrderType {
//   Delivery,
//   Pickup,
// }


