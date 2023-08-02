import 'dart:convert';
import 'dart:io';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_native_image/flutter_native_image.dart';

class Utils {
  /*
  Future<String> toBase64C(String ruta) async {
    if (ruta.isNotEmpty) {
      ImageProperties properties =
          await FlutterNativeImage.getImageProperties(ruta);
      File compressedFile = await FlutterNativeImage.compressImage(ruta,
          quality: 65,
          targetWidth: 400,
          targetHeight: (properties.height! * 400 / properties.width!).round());
      final bytes = await compressedFile.readAsBytes();
      String img64 = base64Encode(bytes);
      return img64;
    } else {
      return "";
    }
  }*/

  Future<String> toBase64(String ruta) async {
    if (ruta.isNotEmpty) {
      final bytes = await File(ruta).readAsBytes();
      String img64 = base64Encode(bytes);
      return img64;
    } else {
      return "";
    }
  }
  static Future<dynamic> makeCoolAlert(String _title, String _text,BuildContext context) {
    return CoolAlert.show(
      context: context,
      type: CoolAlertType.error,
      title: _title,
      text: _text,
      loopAnimation: false,
    );
  } 
  static void showToast(BuildContext context,String text) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(text),
        action: SnackBarAction(label: 'Cerrar', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
