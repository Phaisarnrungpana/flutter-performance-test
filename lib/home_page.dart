import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = List.generate(10000, (index) => 'Item: $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Demo Flutter Performace Test')),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(items[index]),
        ),
      ),
    );
  }
}
