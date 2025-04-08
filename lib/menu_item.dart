import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pizza Menu"),
      ),
      body: Column(
        children: [
          Card(
            elevation: 2, // sombra do card
            child: Padding(
              padding: const EdgeInsets.all(12.0), // espacamento dentro do card
              child: Row(
                children: [
                  Image.asset(
                    "images/margherita.jpg",
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
                          "Pizza Margherita",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Tomato and Muzarella",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "10",
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
          ),
        ],
      ),
    );
  }
}
