import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Jared!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Jared!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '23rd, Jan 2025',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),

                      // notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  
                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5),
                        Text('Search', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  SizedBox(height: 25),

                  // How do you feel?
                  CustomHeader("hello", Icons.add_alert),
                  SizedBox(height: 25),

                  // moods
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // bad
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😫'),
                          SizedBox(height: 8),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      // fine
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🙂'),
                          SizedBox(height: 8),
                          Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      // well
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😁'),
                          SizedBox(height: 8),
                          Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      // excellent
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🤩'),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // Exercise Section
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      // exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      SizedBox(height: 20),

                      // // list of exercises
                      // Expanded(
                      //   child: ListView(
                      //     padding: EdgeInsets.only(bottom: 25),
                      //     children: [
                      //       ExerciseTile(
                      //         icon: Icons.favorite,
                      //         exerciseName: 'Speaking Skills',
                      //         numberOfExercises: 16,
                      //         color: Colors.orange,
                      //       ),
                      //       SizedBox(height: 20),
                      //       ExerciseTile(
                      //         icon: Icons.book,
                      //         exerciseName: 'Reading Skills',
                      //         numberOfExercises: 8,
                      //         color: Colors.blue,
                      //       ),
                      //       SizedBox(height: 20),
                      //       ExerciseTile(
                      //         icon: Icons.edit,
                      //         exerciseName: 'Writing Skills',
                      //         numberOfExercises: 22,
                      //         color: Colors.pink,
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      // list of exercises
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            // padding: EdgeInsets.only(bottom: 25),
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 16,
                                color: Colors.orange,
                              ),
                              SizedBox(height: 20),
                              ExerciseTile(
                                icon: Icons.book,
                                exerciseName: 'Reading Skills',
                                numberOfExercises: 8,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 20),
                              ExerciseTile(
                                icon: Icons.edit,
                                exerciseName: 'Writing Skills',
                                numberOfExercises: 22,
                                color: Colors.pink,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({super.key, required this.emoticonFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(child: Text(emoticonFace, style: TextStyle(fontSize: 28))),
    );
  }
}

class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int numberOfExercises;
  final Color color;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: color,
                  child: Icon(icon, color: Colors.white),
                ),
              ),

              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exerciseName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$numberOfExercises Exercises',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  String text = '';
  IconData? icon;

  CustomHeader(this.text, this.icon, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(icon, color: Colors.white),
      ],
    );
  }
}
