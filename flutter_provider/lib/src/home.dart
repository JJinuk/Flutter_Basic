import 'package:flutter/material.dart';
import 'package:flutter_provider/src/provider/count_provider.dart';
import 'package:flutter_provider/src/ui/count_home_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountProvider countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Sample'),
      ),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () => countProvider.add(),
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => countProvider.remove(),
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
