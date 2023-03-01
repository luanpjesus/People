import 'package:flutter/material.dart';
import 'package:people/models/percent_wheel.dart';

import 'package:people/repository/people_repository.dart';

class PeoplePage extends StatefulWidget {
  PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  late PessoasRepository pessoasRepo;

  @override
  void initState() {
    super.initState();
    pessoasRepo = PessoasRepository();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoas"),
        actions: [
          IconButton(
              onPressed: () => pessoasRepo.sort(),
              icon: Icon(Icons.swap_vert_circle))
        ],
      ),
      body: AnimatedBuilder(
        animation: pessoasRepo,
        builder: (context, child) {
          final pessoas = pessoasRepo.pessoas;

          return (pessoas.isEmpty)
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(
                          child: ClipRRect(
                            child: Image.network(pessoas[index].avatar),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        title: Text(pessoas[index].nome),
                      ),
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: pessoas.length);
        },
      ),
    );
  }
}
