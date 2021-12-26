import 'package:flutter/material.dart';
import 'package:flutter_provider/src/provider/count_provider.dart';
import 'package:flutter_provider/src/ui/count_home_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountProvider countProvider =
        Provider.of<CountProvider>(context, listen: false);

    Widget _navigationBody() {
      return Container();
    }

    Widget _bottomNavigationBarWidget() {
      return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie"),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.red,
        onTap: (index) {
          // provider navigation state;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Sample'),
      ),
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}


      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     IconButton(
      //       onPressed: () => countProvider.add(),
      //       icon: Icon(Icons.add),
      //     ),
      //     IconButton(
      //       onPressed: () => countProvider.remove(),
      //       icon: Icon(Icons.remove),
      //     ),
      //   ],
      // ),