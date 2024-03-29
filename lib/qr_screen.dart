import 'package:flutter/material.dart';
import 'package:login_ui_flutter/scan_screen.dart';
// QR Flutter package
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatefulWidget {
  final String rollno;
  const QrScreen({super.key, required this.rollno});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.teal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              child: Container(
                alignment: Alignment.center,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            child: QrImageView(
              data: widget.rollno,
              version: QrVersions.auto,
              size: 200.0,
              foregroundColor: Colors.white,
            ),
          ),
          TextButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 1)),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScanScreen()));
            },
            child: Text(
              "Scan",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
