import 'package:flutter/material.dart';

class ResultsStore extends ChangeNotifier {
  double afastamento = 0;
  double espacamento = 0;
  double altura = 0;
  int quantidadeFuros = 0;
  double produtoGasto = 0;
  double densidadeRocha = 0;
  double material = 0;
  double totalFurado = 0;

  double get _volumeDesmonte => (afastamento * espacamento * altura * quantidadeFuros);
  double get _razaoCargaGM => (produtoGasto / _volumeDesmonte) * 1000;
  double get _toneladaDesmonte => densidadeRocha * _volumeDesmonte;
  double get _razaoLinear => (material / totalFurado);
  double get _razaoCargaGTON => (material / _toneladaDesmonte) * 1000;
  String get volumeDesmonte => _volumeDesmonte.toStringAsFixed(2);
  String get razaoCargaGM => _razaoCargaGM.toStringAsFixed(2);
  String get toneladaDesmonte => _toneladaDesmonte.toStringAsFixed(2);
  String get razaoLinear => _razaoLinear.toStringAsFixed(2);
  String get razaoCargaGTON => _razaoCargaGTON.toStringAsFixed(2);

  void setAfastamento(double value) {
    afastamento = value;
    notifyListeners();
  }

  void setEspacamento(double value) {
    espacamento = value;
    notifyListeners();
  }

  void setAltura(double value) {
    altura = value;
    notifyListeners();
  }

  void setQuantidadeFuros(double value) {
    quantidadeFuros = value.toInt();
    notifyListeners();
  }

  void setProdutoGasto(double value) {
    produtoGasto = value;
    notifyListeners();
  }

  void setDensidadeRocha(double value) {
    densidadeRocha = value;
    notifyListeners();
  }

  void setMaterial(double value) {
    material = value;
    notifyListeners();
  }

  void setTotalFurado(double value) {
    totalFurado = value;
    notifyListeners();
  }
}
