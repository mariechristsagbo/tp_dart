import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height =  MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/african.jpg',

                )
            )

        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.green.withOpacity(0.5),
                        Colors.yellow.withOpacity(0.5),
                        Colors.red.withOpacity(0.5),
                      ]
                  )
              ),
              height: height/2,
            ),

            Expanded(
              child: Container(
                color: Colors.white, // Couleur de fond du conteneur blanc
                padding: EdgeInsets.all(20), // Marge intérieure pour l'espace entre les widgets enfants
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alignement des widgets enfants à gauche
                  children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/republic.png',
                                  width: 70,
                                    height: 70,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.how_to_vote),
                                    Text ('BJ-ÉLECTIONS',
                                    style: TextStyle (fontWeight: FontWeight.bold,
                                    fontSize: 18)
                                    ),
                                    Text ('La démocratie transparente',
                                    style: TextStyle (
                                      fontWeight: FontWeight.w300
                                    )),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top:30, left: 12),
                          child: Row(
                                                children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Le vote est un devoir en ligne',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Chaque citoyen a le droit de prendre part à la vie politique en général.',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.how_to_vote,
                            color: Colors.teal[800],
                            size: 120,
                          ),
                                                ],
                                              ),
                        ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal[800],
            foregroundColor: Colors.white,
          ),
          child: Text('Continuer avec son NPI',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }

}
