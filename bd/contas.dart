import '../conta.dart';

class Contas {
  static List<Conta> _contas = [];

  void cadastrarConta(Conta conta) {
    _contas.add(conta);
  }

  Iterable<Conta> buscarConta(String numero) {
    return _contas.where((objConta) => objConta.numero == numero);
  }

  List<Conta> listar() {
    return _contas;
  }

  void removerConta(String numero) {
    Iterable<Conta> listaDeContas = buscarConta(numero);
    listaDeContas.forEach((conta) {
      _contas.remove(Conta);
    });
  }

  void editarConta(Conta objConta) {
    Iterable<Conta> listaDeContas = buscarConta(objConta.numero);
    listaDeContas.forEach((antigaConta) {
      antigaConta = objConta;
    });
  }
}
