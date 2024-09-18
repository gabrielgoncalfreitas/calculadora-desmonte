import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class Input extends StatefulWidget {
  final String label;
  final double value;
  final Function(double) onChange;

  const Input({
    super.key,
    required this.label,
    required this.value,
    required this.onChange,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SpinBox(
        decimals: 2,
        min: 0,
        max: double.infinity,
        showButtons: false,
        textAlign: TextAlign.start,
        onChanged: widget.onChange,
        value: widget.value,
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true,
          signed: true,
        ),
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.label,
        ),
      ),
    );
  }
}
