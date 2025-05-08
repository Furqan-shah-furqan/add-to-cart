import 'package:add_to_cart_2/Models/cart_provider.dart';
import 'package:add_to_cart_2/Models/item_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyItem extends StatelessWidget {
  ItemClass item;
  MyItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.r),
      margin: EdgeInsets.all(12.r),
      height: 100.r,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              child: Image.asset(
                item.imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(7),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                color: Colors.blueAccent.shade100,
                onPressed: () {
                  Provider.of<CartProvider>(
                    context,
                    listen: false,
                  ).addtoCart(item);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Item Added SuccessFully")),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    Icon(Icons.shopping_cart, size: 12.sp, color: Colors.white),
                    Text(
                      "ADD TO CART",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
