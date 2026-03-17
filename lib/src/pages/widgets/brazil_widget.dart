import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/pages/widgets/base_flag_widget.dart';

class BrazilWidget extends StatelessWidget {
  const BrazilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseFlagWidget(
      flag: Stack(
        alignment: .center,
        children: [
          Container(color: Colors.green),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Transform.rotate(
                angle: pi / 4,
                child: Container(
                  width: constraints.maxHeight * 0.6,
                  height: constraints.maxHeight * 0.6,
                  color: Colors.yellow,
                ),
              );
            },
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight * .5,
                width: constraints.maxHeight * .5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

/*
return ClipPath(
                  clipper: LosangoClipper(),
                  child: Container(
                    width: constraints.maxWidth * 0.6,
                    height: constraints.maxHeight * 0.6,
                    color: Colors.yellow, // Cor do losango
                  ),
                );
*/

// 1. Criar o Clipper personalizado
class LosangoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Inicia no topo centro
    path.moveTo(size.width / 2, 0);
    // Linha para a direita centro
    path.lineTo(size.width, size.height / 2);
    // Linha para a base centro
    path.lineTo(size.width / 2, size.height);
    // Linha para a esquerda centro
    path.lineTo(0, size.height / 2);
    path.close(); // Fecha o caminho (volta para o topo)
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// 2. Usar o Clipper no Widget
Widget build(BuildContext context) {
  return ClipPath(
    clipper: LosangoClipper(),
    child: Container(
      width: 150,
      height: 150,
      color: Colors.blue, // Cor do losango
    ),
  );
}
