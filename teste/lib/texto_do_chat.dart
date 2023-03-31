import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TextoDoChat extends StatelessWidget {
  const TextoDoChat(
      {super.key,
      required this.texto,
      required this.enviar,
      this.isImage = false});

  final String texto;
  final String enviar;
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(enviar)
            .text
            .subtitle1(context)
            .make()
            .box
            .color(enviar == "user" ? Vx.red200 : Vx.green200)
            .p16
            .rounded
            .alignCenter
            .makeCentered(),
        Expanded(
          child: isImage
              ? AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    texto,
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : const CircularProgressIndicator.adaptive(),
                  ),
                )
              : texto.trim().text.bodyText1(context).make().px8(),
        ),
      ],
    ).py8();
  }
}
