import 'package:add_to_cart_2/Models/item_class.dart';
import 'package:add_to_cart_2/Pages/cart_page.dart';
import 'package:add_to_cart_2/Widgets/items.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GALLERY APP'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              icon: Icon(Icons.shopping_cart_outlined),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return MyItem(item: itemList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
