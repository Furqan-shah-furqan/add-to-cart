import 'package:add_to_cart_2/Models/cart_provider.dart';
import 'package:add_to_cart_2/Models/item_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartProvider>(
        builder: (context, value, child) {
          return value.addItemsToCart.isEmpty
              ? Center(child: Text("Cart is empty"))
              : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.addItemsToCart.length,
                      itemBuilder:
                          (context, index) => ListTile(
                            leading: Image.asset(
                              itemList[index].imagePath,
                              fit: BoxFit.cover,
                            ),
                            title: Text(itemList[index].name),
                            subtitle: Text(itemList[index].price),
                          ),
                    ),
                  ),
                ],
              );
        },
      ),
    );
  }
}
