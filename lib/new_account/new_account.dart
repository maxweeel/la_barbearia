import 'package:flutter/material.dart';
import 'package:la_barbearia/screens/shared/custom_appbar.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: customAppBar('Nova Conta'),
      floatingActionButton: FloatingActionButton (
        onPressed: () {},
        child: const Icon(Icons.save),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome do Usuário',
              ),
              textCapitalization: TextCapitalization.characters,
              autofocus: true,
            ),
           
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'E-mail',
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              obscuringCharacter: "*",
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
              validator: (value ){
                if (value == null || value.trim().isEmpty){
                  return 'O campo precisa ser prenchido';
                }
                return null;
              },
            ),
          ]
        ),
      ),
    );
  }
}