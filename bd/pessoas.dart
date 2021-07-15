import '../pessoa.dart';

class Pessoas {
  static List<Pessoa> _pessoas = [];

  void cadastrarPessoa(Pessoa pessoa) {
    _pessoas.add(pessoa);
  }

  Iterable<Pessoa> buscarPessoa(String telefone) {
    return _pessoas.where((objPessoa) => objPessoa.telefone == telefone);
  }

  List<Pessoa> listar() {
    return _pessoas;
  }

  void removerPessoa(String numero) {
    Iterable<Pessoa> listaDePessoas = buscarPessoa(numero);
    listaDePessoas.forEach((conta) {
      _pessoas.remove(Pessoa);
    });
  }

  void editarPessoa(Pessoa objPessoa) {
    Iterable<Pessoa> listaDePessoas = buscarPessoa(objPessoa.telefone);
    listaDePessoas.forEach((antigaPessoa) {
      antigaPessoa = objPessoa;
    });
  }
}
