import 'package:flutter/material.dart';
import 'package:flutter_provider/src/provider/bottom_navigation_provider.dart';
import 'package:flutter_provider/src/ui/count_home_widget.dart';
import 'package:flutter_provider/src/ui/movie_list_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  // BottomNavigationProvider _bottomNavigationProvider;

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationBar =
        Provider.of<BottomNavigationProvider>(context);

    Widget _navigationBody() {
      switch (bottomNavigationBar.currentPage) {
        case 0:
          return CountHomeWidget();
        case 1:
          return MovieListWidget();
      }
      return Container();
    }

    Widget _bottomNavigationBarWidget() {
      return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movie"),
        ],
        currentIndex: bottomNavigationBar.currentPage,
        selectedItemColor: Colors.red,
        onTap: (index) {
          bottomNavigationBar.updateCurrentPage(index);
          // provider navigation state;
        },
      );
    }

    return Scaffold(
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}
