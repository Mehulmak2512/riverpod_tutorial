import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPreviewScreen extends HookConsumerWidget {
  const QrPreviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
           body: Center(
             child: QrImageView(
               data: 'This QR code has an embedded image as well',
               version: QrVersions.auto,
               size: 300,
               gapless: true,
               padding: const EdgeInsets.all(20),
                 embeddedImage: const AssetImage('assests/images/Kevin_minions.png'),
               embeddedImageStyle: const QrEmbeddedImageStyle(
                 size: Size(80, 80),
               ),
             )
           ),
    );
  }
}
