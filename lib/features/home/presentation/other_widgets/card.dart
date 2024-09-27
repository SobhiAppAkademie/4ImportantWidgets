import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  // Funktion, um die Snackbar anzuzeigen
  void showSnackbar() {
    // Wir rufen den ScaffoldMessenger auf, um die Snackbar anzuzeigen
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      // Inhaltstext
      content: const Text(
        "Zum Beispiel eine Snackbar, um den Status anzuzeigen!",
      ),

      // X-Icon, um die Snackbar zu schließen
      showCloseIcon: true,

      // Hinergrundfarbe
      backgroundColor: Colors.green,

      // Weitere Aktionsbuttons,
      action: SnackBarAction(
          label: "Test Action", textColor: Colors.white, onPressed: () {}),

      // Ob die Snackbar "schweben" oder von unten nach oben aufsteigen soll
      behavior: SnackBarBehavior.fixed,

      // Die Ecken rund/kantig machen
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
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
            child: SizedBox(
              height: 300,
              width: 300,

              // Card
              child: Card(
                // Hintergrundfarbe
                color: Colors.green,

                // Schatten-Größe
                elevation: 100,

                // Tint Farbe, welches sich leicht mit der Hintergrundfarbe "verschmälzt"
                surfaceTintColor: Colors.blue,

                // Schatten-Farbe
                shadowColor: Colors.red.withAlpha(100),

                // child
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Flutter",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Flutter bietet viele Widgets an, die man nutzen kann.",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // unsere Snackbar anzeigen
                                showSnackbar();
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.greenAccent,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.question_mark,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
