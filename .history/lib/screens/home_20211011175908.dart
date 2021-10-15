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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fast Reader"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Insira seu texto"),
          TextFormField(
            controller: _textEditingController,
            decoration: const InputDecoration (
              labelText: 'Celular',
            ),
          ),
        ],
      ),
    );
  }
}
