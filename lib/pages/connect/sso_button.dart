import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:matrix/matrix.dart';

import 'package:pangeachat/pages/connect/connect_page.dart';
import 'package:pangeachat/widgets/matrix.dart';

class SsoButton extends StatelessWidget {
  final IdentityProvider identityProvider;
  final void Function()? onPressed;
  const SsoButton({
    Key? key,
    required this.identityProvider,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(7),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: identityProvider.icon == null
                    ? const Icon(Icons.web_outlined)
                    : CachedNetworkImage(
                        imageUrl: Uri.parse(identityProvider.icon!)
                            .getDownloadLink(
                                Matrix.of(context).getLoginClient())
                            .toString(),
                        width: 30,
                        height: 30,
                      ),
              ),
            ),
            const SizedBox(height: 8),
            // Text(
            //   identityProvider.name ??
            //       identityProvider.brand ??
            //       L10n.of(context)!.singlesignon,
            //   style: const TextStyle(
            //     fontSize: 12,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
