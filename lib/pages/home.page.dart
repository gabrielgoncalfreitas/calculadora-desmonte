import 'package:flutter/material.dart';
import 'package:calculadora_de_desmonte/components/input.dart';
import 'package:calculadora_de_desmonte/components/value_row.dart';
import 'package:calculadora_de_desmonte/application/stores/results.store.dart';

class HomePage extends StatelessWidget {
  final store = ResultsStore();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculadora de desmonte",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: HomePageForm(store),
      ),
    );
  }
}

class HomePageForm extends StatefulWidget {
  final ResultsStore store;

  const HomePageForm(this.store, {super.key});

  @override
  State<HomePageForm> createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.store,
      builder: (context, child) => Form(
        key: _key,
        child: ListView(
          children: [
            Input(
              label: "Afastamento (m)",
              value: widget.store.afastamento,
              onChange: widget.store.setAfastamento,
            ),
            Input(
              label: "Espaçamento (m)",
              value: widget.store.espacamento,
              onChange: widget.store.setEspacamento,
            ),
            Input(
              label: "Altura (m)",
              value: widget.store.altura,
              onChange: widget.store.setAltura,
            ),
            Input(
              label: "Quantidade de furos",
              value: widget.store.quantidadeFuros.toDouble(),
              onChange: widget.store.setQuantidadeFuros,
            ),
            const Divider(),
            Input(
              label: "Produto gasto",
              value: widget.store.produtoGasto,
              onChange: widget.store.setProdutoGasto,
            ),
            const Divider(),
            Input(
              label: "Densidade da rocha",
              value: widget.store.densidadeRocha,
              onChange: widget.store.setDensidadeRocha,
            ),
            const Divider(),
            Input(
              label: "Material",
              value: widget.store.material,
              onChange: widget.store.setMaterial,
            ),
            Input(
              label: "Total furado",
              value: widget.store.totalFurado,
              onChange: widget.store.setTotalFurado,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                      "Resultados",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
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
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context, 'Fechar'),
                        child: const Text('Fechar'),
                      ),
                    ],
                  ),
                ),
                child: const Text("Calcular"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
