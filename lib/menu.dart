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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: pizzaData
                    .map((pizzas) => MenuItem(
                          pizza: pizzas,
                        ))
                    .toList(),
              ),
            ),
          ),
          if (horarioFuncionamento())
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Order now!"),
              ),
            )
        ],
      ),
    );
  }

  bool horarioFuncionamento() {
    var horarioInicio = 18;
    var horarioFinal = 23;
    var horaAtual = DateTime.now().hour;
    
    return horaAtual >= horarioInicio && horaAtual < horarioFinal;
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
