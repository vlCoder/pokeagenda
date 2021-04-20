import 'package:flutter/material.dart';
import 'package:pokeagenda/repositories/poke.repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    callRepo();
  }

  callRepo() async {
    PokeRepository repo = PokeRepository();
    var poke = await repo.search(50);

    debugPrint(poke.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
