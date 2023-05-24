import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final String nome;
  final IconData? icone;
  final VoidCallback? onTap;
  const ListTileCustom({super.key, required this.nome, this.icone, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: icone != null ? Icon(icone) : Icon(Icons.home),
        title: Text(nome,
            style: TextStyle(
                fontFamily: 'BebasNeue', fontSize: 22, color: Colors.white)),
        onTap: onTap);
  }
}
