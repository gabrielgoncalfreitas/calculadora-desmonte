import 'package:calculadora_de_desmonte/application/stores/results.store.dart';
import 'package:calculadora_de_desmonte/components/value_row.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  final ResultsStore store;

  const ResultsPage({super.key, required this.store});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultados"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ValueRow(label: "Volume de desmonte (m³)", value: widget.store.volumeDesmonte.toString()),
            const Divider(),
            ValueRow(label: "Razão de carga (g/m³)", value: widget.store.razaoCargaGM.toString()),
            const Divider(),
            ValueRow(label: "Tonelada de desmonte", value: widget.store.toneladaDesmonte.toString()),
            const Divider(),
            ValueRow(label: "Razão linear (kg/m³)", value: widget.store.razaoLinear.toString()),
            const Divider(),
            ValueRow(label: "Razão de carga (g/ton)", value: widget.store.razaoCargaGTON.toString()),
          ],
        ),
      ),
    );
  }
}
