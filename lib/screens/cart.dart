import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/models/cartModel.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(30),
              child: _cartList(),
            ))
          ],
        ),
      ),
    );
  }
}

class _cartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
          child: Row(children: [
        Consumer<CartModel>(
            builder: (context, cart, child) => Text('\$${cart.totalPrice}')),
        SizedBox(
          width: 24,
        ),
        FilledButton(onPressed: () {}, child: Text('BUY'))
      ])),
    );
  }
}
