import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          width: 300,
          height: 300,
          child: MobileScanner(
            fit: BoxFit.cover,
            allowDuplicates: false,
            onDetect: (barcode, argu) {
              print(barcode.rawValue);
            },
          ),
        ),
      ),
    );
  }
}
