import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../provider/order_provider.dart' as oi;
import 'dart:math';

class OrderItem extends StatefulWidget {
  final oi.OrderItem order;
  OrderItem(this.order);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('\$ ${widget.order.amount}'),
            subtitle: Text(DateFormat.yMMMEd().format(widget.order.dateTime)),
            trailing: IconButton(
              icon:
                  _expanded ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
            ),
          ),
          if (_expanded)
            Container(
              height: min(widget.order.products.length * 20.0 + 10.0, 180),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
              child: ListView(
                children: widget.order.products
                    .map(
                      (prod) => Row(
                        children: <Widget>[
                          Text(
                            prod.title,
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Text('----->'),
                          Divider(),
                          Text(
                            '${prod.quantity} X \$ ${prod.price}',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    )
                    .toList(),
              ),
            )
        ],
      ),
    );
  }
}
