import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taejai/pages/my_scaffold.dart';
import '../models/project.dart';

class ProjectDetailPage extends StatelessWidget {
  final Project project;

  const ProjectDetailPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage(
              project.imageUrl,
            ),
          ),
          Container(
            width: 30,
          ),
          Text(
            project.title,
          ),
        ],
      )),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        project.title,
                        style: const TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/h1.png',
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        project.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.teal[600],
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1DE9B6),
                          ),
                          child: Text(
                            project.player1,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1DE9B6),
                          ),
                          child: Text(
                            project.player2,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1DE9B6),
                          ),
                          child: Text(
                            project.player3,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1DE9B6),
                          ),
                          child: Text(
                            project.player4,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1DE9B6),
                          ),
                          child: Text(
                            project.player5,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(),

                      ],
                    ),
                  ),
                )),
            Flexible(
                flex: 6,
                child: Container(
                  color: Colors.teal[900],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.teal[800],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WIN',
                                style: TextStyle(
                                    color: Colors.teal[600], fontSize: 50),
                              ),
                              Text(
                                '${project.win}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 100),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Flexible(
                            flex: 5,
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.asset(project.team),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Flexible(
                                flex: 1,
                                child: Text(
                                  '[  ${project.point}  ]',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Flexible(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'POINT',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(height: 10,),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.teal[800],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'LOSE',
                                style: TextStyle(
                                    color: Colors.teal[600], fontSize: 50),
                              ),
                              Text(
                                '${project.lose}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 100),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
