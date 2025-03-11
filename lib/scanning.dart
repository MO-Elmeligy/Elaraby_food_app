import 'package:flutter_blue_plus/flutter_blue_plus.dart';

void scanForDevices() {
  FlutterBluePlus flutterBlue = FlutterBluePlus();

  // Start scanning
  FlutterBluePlus.startScan(timeout: Duration(seconds: 5));

  // Listen for devices found
  FlutterBluePlus.scanResults.listen((List<ScanResult> results) {
    for (ScanResult r in results) {
      print('Found device: ${r.device.name}, ID: ${r.device.id}');
    }
  });

  // Stop scanning after 5 seconds
  Future.delayed(Duration(seconds: 5), () {
    FlutterBluePlus.stopScan();
  });
}