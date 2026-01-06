import "package:flutter/material.dart";

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Para Fazer"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),

            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 360,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('E-mail'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 360,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Senha'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Dashboard');
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
