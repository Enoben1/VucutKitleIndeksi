import 'package:flutter/material.dart';
import 'package:vki_hesaplama/sabitler.dart';

class GuzelCard extends StatelessWidget {
  GuzelCard({@required this.simge, this.metin, this.cardColor, this.fonksiyon, this.shadowcolor, this.elevation});

  final IconData simge;
  final String metin;
  final Color cardColor;
  final Function fonksiyon;
  final Color shadowcolor;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fonksiyon,
      child: Card(
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: elevation,
        shadowColor: shadowcolor,
        color: cardColor,
        child: Column(
          children: [
            Icon(
              simge,
              size: 120,
              color: rkCardForeColor,
            ),
            Text(
              metin,
              style: TextStyle(
                color: rkCardForeColor,
                fontSize: 21,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OrtakCard extends StatelessWidget {
  OrtakCard(this.fonksiyon, this.cardColor, this.cardChild);

  final cardColor;
  final Widget cardChild;
  final fonksiyon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fonksiyon,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: rkPasifCardBackColor,
        ),
        child: cardChild,
      ),
    );
  }
}
class kilocard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

