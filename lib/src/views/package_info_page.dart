import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/main.dart';
import 'package:flutter_sample/src/components/my_app_bar.dart';

class PackageInfoPage extends ConsumerWidget {
  const PackageInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String appName = ref.read(packageInfoProvider).appName;
    String packageName = ref.read(packageInfoProvider).packageName;
    String version = ref.read(packageInfoProvider).version;
    String buildNumber = ref.read(packageInfoProvider).buildNumber;

    return Scaffold(
      appBar: const MyAppBar("PackageInfoPage"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(appName, style: Theme.of(context).textTheme.titleLarge),
            Text(packageName, style: Theme.of(context).textTheme.titleLarge),
            Text(version, style: Theme.of(context).textTheme.titleLarge),
            Text(buildNumber, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
