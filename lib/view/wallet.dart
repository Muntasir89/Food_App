import 'package:flutter/material.dart';

import '../utils/constants.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: mainDrawer(1),
    ));
  }
}
