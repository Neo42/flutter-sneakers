import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/bottom_nav_bar.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Shop"),
    );
  }
}
