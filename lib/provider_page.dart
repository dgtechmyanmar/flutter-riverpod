import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final numberProvider = Provider<int>((ref) {
  return 20;
});

class ProviderPage extends ConsumerWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider: Use Consumer'),
      ),
      body: Center(
        child: Text(
          "Zaw Paing Age is ${ref.watch(numberProvider)}"
        ),
      ),
    );
  }
}
