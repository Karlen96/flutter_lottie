import 'package:flutter/material.dart';

import '../../widgets/preview_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;

  void _onNext() {
    if (currentIndex < 4) {
      currentIndex++;
    } else {
      currentIndex = 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie animations'),
      ),
      body: Center(
        child: PreviewWidget(
          key: ValueKey(currentIndex),
          src: 'assets/animations/$currentIndex.json',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onNext,
        child: const Icon(Icons.arrow_forward_outlined),
      ), //
    );
  }
}
