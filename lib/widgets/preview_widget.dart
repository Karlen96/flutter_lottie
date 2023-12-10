import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({
    super.key,
    required this.src,
  });

  final String src;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      src,
      alignment: Alignment.center,
    );
  }
}
