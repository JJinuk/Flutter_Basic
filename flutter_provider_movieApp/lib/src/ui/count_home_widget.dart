import 'package:flutter/material.dart';
import 'package:flutter_provider/src/components/view_count.dart';
import 'package:flutter_provider/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountProvider countProvider = Provider.of<CountProvider>(
      context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Provider'),
      ),
      body: ViewCountWidget(),
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
