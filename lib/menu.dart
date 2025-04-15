import 'package:flutter/material.dart';
import 'package:pizza_menu/menu_item.dart';
import 'package:pizza_menu/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Menu"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: pizzaData.map((pizzas) => MenuItem(pizza: pizzas,)).toList(),
        ),
      ),
    );
  }

  //outra maneira de carregar as pizzas para MenuItem
  List<MenuItem> _buildPizzas() {
    //Pizza => MenuItem
    List<MenuItem> listaPizzas = [];
    for (var pizza in pizzaData) {
      listaPizzas.add(MenuItem(pizza: pizza));
    }
    return listaPizzas;
  }
}
