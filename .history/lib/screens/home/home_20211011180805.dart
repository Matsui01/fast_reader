import 'package:fast_reader/controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Ctrl<String> _textCtrl = Ctrl<String>(val: "");

  final TextEditingController _textEditingController = TextEditingController();

  void teste() async {
    for (var word in _textEditingController.text.split(" ")) {
      _textCtrl.setState(word);
      await Future.delayed(Duration(milliseconds: 500));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fast Reader"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text("Insira seu texto"),
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: _textEditingController,
                    decoration: const InputDecoration(
                      labelText: 'Texto',
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Iniciar"),
          )
        ],
      ),
    );
  }
}
