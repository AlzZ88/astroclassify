import 'package:flutter/material.dart' hide Step;

class Globals {
  static String HOST="http://alzzdev88.pythonanywhere.com";
  static String user = "Usuario1";
  static String title = "";
  static String recipe_title="";
  static bool isDebug = true;
  static bool loged = false;
 

  static showToast(BuildContext context, String text) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(text),
        action: SnackBarAction(
            label: 'Cerrar', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}

