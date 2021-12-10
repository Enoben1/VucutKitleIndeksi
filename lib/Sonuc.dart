import 'package:flutter/material.dart';
import 'package:vki_hesaplama/sabitler.dart';

class Sonuc extends StatelessWidget {
  Sonuc(this.vki);

  final vki;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: rkZeminArkaPlan,
      child: Column(
  children: [Text("Vücut Kitle Endeksiniz: $vki"),
  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Geri Dön"))],
      ),
    );
  }
}

