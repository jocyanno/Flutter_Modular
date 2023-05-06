import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/home', arguments: 'Pessoa Enviada');
                },
                child: Text('Pelo Data')),
            const SizedBox( height: 20,),
            ElevatedButton(onPressed: () {
                  Modular.to.pushNamed('/home/?query=Pessoa&order=id');
            }, child: Text('Query String')),
            const SizedBox( height: 20,),
            ElevatedButton(onPressed: () {
              Modular.to.pushNamed('/home/123/batata');
            }, child: Text('Parametro como Path')),
          ],
        ),
      ),
    );
  }
}
