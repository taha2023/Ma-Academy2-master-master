import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/styles_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/styles_manager.dart';

import 'package:sizer/sizer.dart';

class ScanQrScreen extends StatefulWidget {
  @override
  _ScanQrScreenState createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  var qrstr = "let's Scan it";
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          title: const Text('Scanning QR code'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                qrstr,
                style:
                    getBoldStyle(color: ColorManager.primary, fontSize: 22.sp),
              ),
              GestureDetector(
                  onTap: scanQr,
                  child: Container(
                      width: 60.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          color: ColorManager.primary,
                          borderRadius: BorderRadius.circular(16.sp)),
                      child: Center(
                          child: Text("Scanner",
                              style: getBoldStyle(
                                  color: ColorManager.whiteColor,
                                  fontSize: 20.sp))))),
            ],
          ),
        ));
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}
