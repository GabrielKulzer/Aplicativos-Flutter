import 'endereco.dart';
import 'funcionario.dart';

class CaixaOperador extends Funcionario {
  String _guiche;

  CaixaOperador(
    this._guiche,
    int hMatricula,
    double hSalario,
    String hNome,
    String hRG,
    String hCPF,
    String hdataDeNascimento,
    String hTelefone,
    Endereco hEndereco, [
    String? hEmail,
  ]) : super(
          hMatricula,
          hSalario,
          hNome,
          hRG,
          hCPF,
          hdataDeNascimento,
          hTelefone,
          hEndereco,
          hEmail,
        );

  String get guiche => this._guiche;
  set guiche(String value) => this._guiche = value;
}
