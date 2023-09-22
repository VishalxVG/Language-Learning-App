import 'package:flutter/material.dart';

class TechnicalPage extends StatelessWidget {
  const TechnicalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: const Center(
          child: Text(
            "    La economía de mercado - Market economy\nLa globalización - Globalization\nLa tasa de interés - Interest rate\nEl sector público - Public sector\nEl sector privado - Private sector\nEl mercado de valores - Stock market\nLa política fiscal - Fiscal policy\nLa balanza comercial - Trade balance\nLa inflación - Inflation\nEl PIB (Producto Interno Bruto) - GDP (Gross Domestic Product)",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
