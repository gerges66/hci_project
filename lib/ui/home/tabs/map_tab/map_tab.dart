import 'package:flutter/material.dart';
import 'package:hci_project/utils/app_assets.dart';

class MapTab extends StatelessWidget {
  const MapTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.mapPage,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
