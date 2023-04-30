import 'package:color_generator/random_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Color _backgroundColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: Text(
          'Random color generation',
          style: TextStyle(
            color: RandomColors.getContrastingTextColor(_backgroundColor),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: _backgroundColor,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackgroundColor,
          child: const Text('Random color'),
        ),
      ),
    );
  }

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = RandomColors.getRandomColor();
    });
  }
}
