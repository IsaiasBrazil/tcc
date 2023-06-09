import 'package:flutter/material.dart';
import 'package:tcc/cadastrar_estoque_racao.dart';
import 'package:tcc/cadastrar_galpao.dart';
import 'package:tcc/cadastrar_info_lote.dart';
import 'package:tcc/cadastrar_lote.dart';
import 'cadastrar_sensor.dart';
import 'home.dart';
import 'widget_listtile.dart';

class MenuLateral extends StatelessWidget {
  final titulo;
  const MenuLateral({
    super.key,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.green,
      child: ListView(
        children: [
          DrawerHeader(
              child: Center(
                  child: Text(
            titulo,
            style: TextStyle(
                fontFamily: 'BebasNeue', fontSize: 28, color: Colors.white),
          ))),
          ListTileCustom(
            nome: 'Página inicial',
            icone: Icons.home,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          // Criação do item menu 'Galpões'
          ExpansionTile(
            title: Text('Galpões',
                style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 26,
                    color: Colors.white)),
            leading: Icon(Icons.warehouse),

            // Criação dos submenus
            children: [
              ListTileCustom(
                nome: 'Cadastro',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaCadastroGalpao()));
                },
              ),
              ListTileCustom(
                nome: 'Alteração',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTileCustom(
                nome: 'Exclusão',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTileCustom(
                nome: 'Consulta',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          ),
          //Criação do item menu 'Lotes'
          ExpansionTile(
            title: Text('Lotes',
                style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 26,
                    color: Colors.white)),
            leading: Icon(Icons.warehouse_outlined),

            // Criação dos submenus
            children: [
              ListTileCustom(
                nome: 'Cadastro',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaCadastroLote()));
                },
              ),
              ListTileCustom(
                nome: 'Alteração',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTileCustom(
                nome: 'Exclusão',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTileCustom(
                nome: 'Consulta',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          ),

          // Criação do item menu 'Sensores'
          ExpansionTile(
            title: Text('Sensores',
                style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontSize: 26,
                    color: Colors.white)),
            leading: Icon(Icons.sensors),

            // Criação dos submenus
            children: [
              ListTileCustom(
                nome: 'Cadastro',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaCadastroSensor()));
                },
              ),
              ListTileCustom(
                nome: 'Alteração',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTileCustom(
                nome: 'Exclusão',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              ListTileCustom(
                nome: 'Consulta',
                alinhamentoDoTexto: TextAlign.center,
                icone: null,
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ],
          ),

          // Criação do item menu 'Diário de produção'
          ListTileCustom(
            nome: 'Diário de produção',
            icone: Icons.note_add,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaCadastroInfoLote()));
            },
          ),

          // Criação do item menu 'Ração'
          ListTileCustom(
            nome: 'Ração',
            icone: Icons.food_bank,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaCadastroEstoqueRacao()));
            },
          ),
        ],
      ),
    ));
  }
}
