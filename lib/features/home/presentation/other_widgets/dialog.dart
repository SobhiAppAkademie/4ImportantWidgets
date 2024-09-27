import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  void showDialogModel(BuildContext context, bool otherColor) {
    // showDialog aufrufen, um ein Dialog anzuzeigen
    showDialog(

        // Hintergrund-Farbe wenn sich der Dialog öffnet (Ist nicht die Dialog-Farbe!)
        barrierColor: Colors.black.withOpacity(0.5),

        // Legt fest, ob der Dialog von außen geschlossen werden darf (d.H. ob man außerhalb des Dialogs klickt, um es zu schließen)
        barrierDismissible: true,

        // Context übergeben
        context: context,

        // builder
        builder: (context) => AlertDialog(
              // Hintergrundfarbe des Dialogs
              backgroundColor: otherColor ? Colors.blue : Colors.green,

              // Aktions-Buttons
              actions: [
                // Erster Aktion-Button
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Abbrechen",
                      style: TextStyle(color: Colors.white),
                    )),

                // Zweiter Aktion-Button
                TextButton(
                    onPressed: () {
                      // Navigator schließen
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "OK",
                      style: TextStyle(color: Colors.white),
                    )),
              ],

              // Titel
              title: const Text(
                "Ich bin ein Dialog",
                style: TextStyle(color: Colors.white),
              ),

              // Beschreibung / Inhalt
              content: const Text("Diese Aktion ist leider nicht ausführbar."),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  // Dialog aufrufen
                  showDialogModel(context, false);
                },
                child: const Text("Drück mich")),
          )
        ],
      ),
    );
  }
}
