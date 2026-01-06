import 'package:flutter/material.dart';

class Dashboardpage extends StatelessWidget{
  const Dashboardpage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Para Fazer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1, 
          ),
        itemCount: 6,
        itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Tarefa ${index + 1}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              );
            },
        ),
      ),
    );
  }
}