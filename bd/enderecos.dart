import '../endereco.dart';

class Enderecos {
  static List<Endereco> _enderecos = [];

  void cadastrar(Endereco endereco) {
    _enderecos.add(endereco);
  }

  Iterable<Endereco> buscarEndereco(String cep) {
    return _enderecos.where((objEndereco) => objEndereco.cep == cep);
  }

  List<Endereco> listar() {
    return _enderecos;
  }

  void removerEndereco(String cep) {
    Iterable<Endereco> listaDeEnderecos = buscarEndereco(cep);
    listaDeEnderecos.forEach((cendereco) {
      _enderecos.remove(Endereco);
    });
  }

  void editarEndereco(Endereco objEndereco) {
    Iterable<Endereco> listaDeEnderecos = buscarEndereco(objEndereco.cep);
    listaDeEnderecos.forEach((antigoEndereco) {
      antigoEndereco = objEndereco;
    });
  }
}
