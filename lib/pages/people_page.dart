import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:people/models/people.dart';
import 'package:people/repository/people_repository.dart';

class PeoplePage extends StatelessWidget {
  PeoplePage({super.key});
  final tabela = PeopleRepository.pessoas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded),
        title: const Text("Pessoas"),
      ),
      body: Center(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int pessoas) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 1,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(tabela[pessoas].icone),
                  ),
                  title: Text(tabela[pessoas].name),
                  subtitle: Text(tabela[pessoas].profissao),
                  trailing: Text(tabela[pessoas].idade.toString()),
                ),
              ),
            );
          },
          itemCount: tabela.length,
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    );
  }
}
