import 'package:flutter/material.dart';

import '../enams/OrderType.dart';
import '../model/order.dart';


class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Order> _completedOrders = [
    Order('Order 1', '05/01/2023', OrderType.Delivery),
    Order('Order 1', '05/01/2023', OrderType.Delivery),
    Order('Order 2', '05/02/2023', OrderType.Pickup),
    Order('Order 2', '05/02/2023', OrderType.Pickup),
    Order('Order 3', '05/03/2023', OrderType.Delivery),
  ];

  List<Order> _underwayOrders = [
    Order('Order 4', '05/04/2023', OrderType.Delivery),
    Order('Order 4', '05/04/2023', OrderType.Delivery),
    Order('Order 5', '05/05/2023', OrderType.Pickup),
    Order('Order 5', '05/05/2023', OrderType.Pickup),
  ];

  List<Order> _pendingOrders = [
    Order('Order 6', '05/06/2023', OrderType.Delivery),
    Order('Order 7', '05/07/2023', OrderType.Delivery),
    Order('Order 8', '05/08/2023', OrderType.Pickup),
    Order('Order 9', '05/09/2023', OrderType.Pickup),
    Order('Order 7', '05/07/2023', OrderType.Delivery),
    Order('Order 9', '05/09/2023', OrderType.Pickup),
    Order('Order 7', '05/07/2023', OrderType.Delivery),
    Order('Order 9', '05/09/2023', OrderType.Pickup),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders Screen'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Completed'),
            Tab(text: 'Underway'),
            Tab(text: 'Pending'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOrderList(_completedOrders),
          _buildOrderList(_underwayOrders),
          _buildOrderList(_pendingOrders),
        ],
      ),
    );
  }

  Widget _buildOrderList(List<Order> orders) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(orders[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(orders[index].date,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
          trailing: Text(orders[index].type.toString()),
        );
      },
    );
  }
}


