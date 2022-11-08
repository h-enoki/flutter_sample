import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/main.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class DeviceInfoPage extends ConsumerWidget {
  const DeviceInfoPage({super.key});

  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String model = "";
    String device;

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = ref.read(androidDeviceInfoProvider);
      model = androidInfo.model;
      device = androidInfo.device;
    } else {
      throw UnsupportedError('Unsupported platform');
    }

    return Scaffold(
      appBar: const MyAppBar("DeviceInfoPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(model, style: Theme.of(context).textTheme.titleLarge),
            Text(device, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
