import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    // using hex colors; can they be const?
    final Color BarColor = HexColor.fromHex('#008F7A');
    final Color BGColor = HexColor.fromHex('#C0D4C7');
    final Color BoxColor = HexColor.fromHex('#6AA581');

    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: BGColor,
        // appBar: AppBar(
        //   title: Center(
        //     child: Text("/"),
        //     ),
        //   backgroundColor: BarColor,
        // ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.space,
          children: [
            Expanded(
              child: Container(
              color:Colors.green[800],
              ),
            ),
              Expanded(
              child: Container(
              color:Colors.green[600],
              ),
            ),
              Expanded(
              child: Container(
              color:BoxColor,
              ),
            ),
          ]
          ),
      ),
    );
  }
}
extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}