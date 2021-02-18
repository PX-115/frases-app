import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(HomeStateful());

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _frases = [
    '"Um advogado é alguém que sorri, não importa o quão ruim a situação fique." - Godot',
    '"O trabalho de um advogado de defesa é acreditar nas pessoas e acreditar até o fim." - Miles Edgeworth',
    '"É natural que as criaturas vivas lutem para proteger suas próprias vidas. Mas o que nos torna humanos é que lutamos pelos outros. Mas por quem você luta? Quão duro você deve lutar ...? Essa é a verdadeira medida de quanto vale a vida humana. Nós, advogados de defesa, somos guerreiros constantemente desafiados por essa questão." - Phoenix Wright',
    '"...Errar é humano, perdoar é divino. Os humanos não são máquinas ... eles têm almas, sentimentos. Eles vivem, morrem, amam, odeiam ... E sim, até cometem erros ..." - Godot',
    '"Ninguém pode mudar o passado. A única coisa que podemos fazer é nos esforçar para compensar nossos erros. Por que devemos compensar nossos erros, você pergunta? Porque assim fazendo ... podemos encontrar a estrada de volta ao nosso caminho. E, uma vez que encontramos nosso caminho, podemos avançar de nossos erros passados ​​em direção a um futuro mais brilhante." - Phoenix Wright',
    '"Você não pode chorar ainda. O único momento em que um advogado pode chorar é quando está tudo acabado" - Godot',
    '"Mais negro que uma noite sem lua, mais quente e mais amargo que o próprio inferno ... isso, é o café." - Godot',
    '"...Todos usamos máscaras, seja em nossos rostos... ou em nossos corações." - Godot',
    '"Não importa quantos truques dissimulados uma pessoa use ... A verdade sempre encontrará uma maneira de se dar a conhecer. A única coisa que podemos fazer é lutar com o conhecimento que possuímos e tudo o que temos. Apagando os paradoxos um por um ... Nunca é fácil ... Nós agarramos e arranhamos cada centímetro. Mas sempre chegaremos eventualmente a essa única verdade." - Miles Edgeworth',
  ];

  var _fraseGerada = 'Esse é um app simples para exibir algumas frases aleatórias da série de jogos "Ace Attorney", pressione o botão para gerar novas frases!';

  void _gerarFrase() {
    var numeroSorteado = new Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: Text('PX Wright: Ace App'),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset("images/Ace_Attorney_Logo.png",
                        fit: BoxFit.contain),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 40),
                    child: Text(
                      _fraseGerada,
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[600]),
                    ),
                  ),
                  Container(
                      child: RaisedButton(
                    onPressed: _gerarFrase,
                    child: Text(
                      'Nova frase',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
                  )),
                ],
              ),
            )));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('PX Wright: Ace App'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset("images/Ace_Attorney_Logo.png",
                    fit: BoxFit.scaleDown),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 40),
                child: Text(
                  'Esse é um app simples para exibir algumas frases aleatórias da série de jogos "Ace Attorney", pressione o botão para gerar novas frases! (As frases serão exibidas no lugar do texto acima)',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[600]),
                ),
              ),
              Container(
                  child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Nova frase',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
              )),
            ],
          ),
        ));
  }
}
