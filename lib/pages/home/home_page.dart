import 'package:app_nubank/pages/home/widgets/my_app_bar.dart';
import 'package:app_nubank/pages/home/widgets/page_view_app.dart';
import 'package:flutter/material.dart';

// StatelessWidget: Não há alteração dos widgets no decorrer da utilização do app.
// StatefulWidget: Pode haver mudanças de estados e informações no decorrer do uso do app.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = false;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // [800] Deixar a nossa cor um pouco mais escura.
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          // ignore: prefer_const_constructors
          PageViewApp(),
        ],
      ),
    );
  }
}
