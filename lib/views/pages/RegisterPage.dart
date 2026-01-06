import "package:flutter/material.dart";

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

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

            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 360,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Confirme sua Senha'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: const Text('Cadastrar-se'),
            ),

             SizedBox(height: 10),
             
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              child: const Text('Já Possuo Conta'),
            ),
          ],
        ),
      ),
    );
  }
}
