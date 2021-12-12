import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vki_hesaplama/sabitler.dart';
import 'package:vki_hesaplama/card_widget.dart';

class Sonuc extends StatelessWidget {
  Sonuc(this.vki);

  final vki;
  var sonuc;

  var cvpzayif = "İdeal kilonun altında kalmışsın ama yükselmen için yanındayız! Tek ihtiyacın biraz motivasyon biraz da düzenli ve dengeli beslenme.";
  var cvpnormal = "Harikasın! Tam da ideal kilondasın! Şimdi sana düşen bunu korumak. Hareketi ihmal etmeden, düzenli ve dengeli beslenmeye ve bizi takip etmeye devam!";
  var cvpkilolu = "Hedefe yakınsın! Önünde kısa bir yol var. Dengeli beslenme ve düzenli fiziksel aktivite ile tam 12'den en ideali vurabilirsin!";
  var cvpobez = "İdeal kilonu biraz uzakta bırakmışsın ama güzel bir haberimiz var; ona kavuşmak sandığın kadar zor değil. Hareket ve dengeli beslenme hayatının bir parçası olduğunda değişimin hızına sen bile inanamayacaksın.";

  //var kisavki = vki.toStringAsPrecision(3);
  @override
  Widget build(BuildContext context) {
    //asd();
    return Scaffold(
      backgroundColor: rkZeminArkaPlan,
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(15),
                    child: Text(
                      "SONUCUNUZ",
                      style: TextStyle(fontSize: 42, color: rkCardForeColor),
                    )),
                SizedBox(height: 10,)
              ],
            ),
          ),
          Expanded(
            flex: 15,
            child: OrtakCard(
              () {},
              Colors.red,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      vki <= 18.5
                          ? "Zayıf"
                          : vki >= 18.5 && vki <= 25
                              ? "Normal Kilolu"
                              : vki >= 25 && vki <= 30
                                  ? "Fazla Kilolu"
                                  : vki >= 30
                                      ? "Obez"
                                      : ".",
                      style: TextStyle(fontSize: 30, color: Colors.green),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      (double.parse((vki).toStringAsFixed(2))).toString(),
                      style: TextStyle(
                          fontSize: 80,
                          color: rkCardForeColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        vki <= 18.5
                            ? cvpzayif
                            : vki >= 18.5 && vki <= 25
                            ? cvpnormal
                            : vki >= 25 && vki <= 30
                            ? cvpkilolu
                            : vki >= 30
                            ? cvpobez
                            : ".",
                        style: TextStyle(fontSize: 21, color: rkCardForeColor),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(232, 61, 102, 1)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Geri Dön")),
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
