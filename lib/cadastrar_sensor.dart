import 'package:flutter/material.dart';

import 'widget_botao.dart';
import 'widget_campo.dart';

class TelaCadastroSensor extends StatefulWidget {
  const TelaCadastroSensor({super.key});

  @override
  State<TelaCadastroSensor> createState() => _TelaCadastroSensorState();
}

class _TelaCadastroSensorState extends State<TelaCadastroSensor> {
  TextEditingController codigoDoSensor = TextEditingController();
  TextEditingController codigoDoGalpao = TextEditingController();
  TextEditingController tipoDeSensor = TextEditingController();
  TextEditingController descricaoDoSensor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text('Cadastro de sensor',
            style: TextStyle(fontFamily: 'BebasNeue', fontSize: 34)),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Campo(
                  nome: 'Código do sensor:',
                  controller: codigoDoSensor,
                  keyboardType: TextInputType.text,
                ),
              ),
              Expanded(
                child: Campo(
                  nome: 'Código do galpão:',
                  controller: codigoDoGalpao,
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Campo(
                  nome: 'Tipo:',
                  controller: tipoDeSensor,
                  keyboardType: TextInputType.text,
                ),
              ),
              Expanded(
                child: Campo(
                  nome: 'Descrição do sensor:',
                  controller: descricaoDoSensor,
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(
                    8.0), // Adjust the padding value as per your preference
                child: SizedBox(
                    width: 115,
                    height: 40,
                    child: Botao(
                      texto: 'Cadastrar',
                      aoSerPressionado: () {},
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(
                    8.0), // Adjust the padding value as per your preference
                child: SizedBox(
                    width: 115,
                    height: 40,
                    child: Botao(
                      texto: 'Limpar tudo',
                      aoSerPressionado: () {
                        codigoDoSensor.clear();
                        codigoDoGalpao.clear();
                        tipoDeSensor.clear();
                        descricaoDoSensor.clear();
                      },
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
