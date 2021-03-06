import 'package:flutter/material.dart';
import 'package:flutter_provider/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Center(
      child: Consumer<CountProvider>(builder: (context, provider, child) {
        return Text(
          provider.count.toString(),
          style: TextStyle(fontSize: 50),
        );
      }),
    );
  }
}
