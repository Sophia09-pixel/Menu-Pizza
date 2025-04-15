// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:pizza_menu/pizza_data.dart';

class MenuItem extends StatelessWidget {
  final Pizza pizza;
  const MenuItem({super.key, required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2, // sombra do card
      child: Padding(
        padding: const EdgeInsets.all(12.0), // espacamento dentro do card
        child: Row(
          children: [
            Image.asset(
              "images/${pizza.photoName}",
              width: 100,
              height: 100,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              // para o texto pegar o espaço completo do componente
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${pizza.name}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    pizza.ingredients,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "\$ ${pizza.price}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
