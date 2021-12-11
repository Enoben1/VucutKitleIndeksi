import 'package:flutter/material.dart';
import 'package:vki_hesaplama/card_widget.dart';
import 'package:vki_hesaplama/sabitler.dart';
import 'package:vki_hesaplama/Sonuc.dart';

void main() {
  runApp(const MyApp());
}

enum cinsiyet { male, female, notrs }
double elevationman = 10.0;
double elevationgirl = 10.0;

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter İlk Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color cardColor = rkPasifCardBackColor;
  cinsiyet seciliCinsiyet;
  int height = 180;
  int weight = 70;
  int age = 25;
  double vki;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkZeminArkaPlan,
      appBar: AppBar(
        backgroundColor: rkZeminArkaPlan,
        title: Center(
          child: Text(
            "VKİ Hesaplama",
            style: TextStyle(
              color: rkCardForeColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    GuzelCard(
                      fonksiyon: () {
                        setState(() {
                          seciliCinsiyet = cinsiyet.male;
                          elevationman = 50;
                          elevationgirl = 10;
                        });
                      },
                      cardColor: seciliCinsiyet == cinsiyet.male
                          ? rkAktifCardBackColor
                          : rkPasifCardBackColor,
                      simge: Icons.male,
                      metin: "ERKEK",
                      shadowcolor: Colors.blue,
                      elevation: elevationman,
                    ),
                  ],
                ),
                Row(
                  children: [
                    GuzelCard(
                      fonksiyon: () {
                        setState(() {
                          seciliCinsiyet = cinsiyet.female;
                          elevationgirl = 50;
                          elevationman = 10;
                        });
                      },
                      cardColor: seciliCinsiyet == cinsiyet.female
                          ? rkAktifCardBackColor
                          : rkPasifCardBackColor,
                      simge: Icons.female,
                      metin: "KADIN",
                      shadowcolor: Colors.red,
                      elevation: elevationgirl,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: OrtakCard(
              () {},
              Colors.red,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: tsActivCardColor,
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: tsHeightStyle,
                      ),
                      Text(
                        "cm",
                        style: tsCmStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: stSliderTheme,
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 120,
                      max: 220,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: OrtakCard(
                    () {},
                    Colors.red,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "KİLO",
                          style: tsActivCardColor,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              weight.toString(),
                              style: tsHeightStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor:
                                  Color.fromRGBO(255, 255, 255, 0.3),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              },
                              child: Icon(Icons.remove_outlined),
                            ),
                            FloatingActionButton(
                              backgroundColor:
                                  Color.fromRGBO(255, 255, 255, 0.3),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  weight = weight + 1;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: OrtakCard(
                    () {},
                    Colors.red,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "YAS",
                          style: tsActivCardColor,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              age.toString(),
                              style: tsHeightStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              backgroundColor:
                                  Color.fromRGBO(255, 255, 255, 0.3),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  age = age - 1;
                                });
                              },
                              child: Icon(Icons.remove_outlined),
                            ),
                            FloatingActionButton(
                              backgroundColor:
                                  Color.fromRGBO(255, 255, 255, 0.3),
                              foregroundColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  age = age + 1;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(232, 61, 102, 1)),
                  onPressed: () {
                    vki = weight / ((height / 100) * (height / 100));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sonuc(vki = vki)),
                    );
                  },
                  child: Text("HESAPLA")),
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
