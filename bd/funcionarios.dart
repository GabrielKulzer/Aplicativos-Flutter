import '../funcionario.dart';

class Funcionarios {
  static List<Funcionario> _funcionarios = [];

  void cadastrarFuncionario(Funcionario funcionario) {
    _funcionarios.add(funcionario);
  }

  Iterable<Funcionario> buscarFuncionario(int matricula) {
    return _funcionarios
        .where((objFuncionario) => objFuncionario.matricula == matricula);
  }

  List<Funcionario> listar() {
    return _funcionarios;
  }

  void removerFuncionario(int matricula) {
    Iterable<Funcionario> listaDeFuncionarios = buscarFuncionario(matricula);
    listaDeFuncionarios.forEach((funcionario) {
      _funcionarios.remove(Funcionario);
    });
  }

  void editarFuncionario(Funcionario objFuncionario) {
    Iterable<Funcionario> listaDeFuncionarios =
        buscarFuncionario(objFuncionario.matricula);
    listaDeFuncionarios.forEach((antigoFuncionario) {
      antigoFuncionario = objFuncionario;
    });
  }
}
