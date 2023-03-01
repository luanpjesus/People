import 'package:flutter_test/flutter_test.dart';
import 'package:people/repository/people_repository.dart';

void main() {
  test('initializes pessoas list and notifies listeners', () async {
    final repository = PessoasRepository();

    expect(repository.pessoas, isEmpty);

    await repository.initRepository();

    expect(repository.pessoas.length, equals(20));
    expect(repository.pessoas[0].nome, isNotEmpty);
    expect(repository.pessoas[0].avatar, isNotEmpty);

    expect(repository, emitsInOrder([isNotNull, isNotNull]));
  });
}
