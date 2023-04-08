import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taejai/pages/project_details_page.dart';

import '../../models/project.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
        title: 'MADE IN THAI LAND',
        nationality: 'THAILAND',
        player1: 'PTC',
        player2: 'B3TA',
        player3: 'KADOOM',
        player4: 'WANNAFLY',
        player5: 'ALONEFILLZ',
        win: 12,
        lose: 5,
        point: 36,
        imageUrl: "assets/images/p0.jpg",
        team: "assets/images/pp1.jpg",
        country: "assets/images/th.jpg"),
    Project(
        title: 'FULL SENSE',
        nationality: 'THAILAND',
        player1: 'APINYA',
        player2: 'TEERAPONG',
        player3: 'THEELOVEFAMILY',
        player4: 'JOHNOLSEN',
        player5: 'SUPERBUSS',
        win: 2,
        lose: 7,
        point: 6,
        imageUrl: 'assets/images/p5.png',
        team: "assets/images/pp2.jpg",
        country: "assets/images/th.jpg"),
    Project(
        title: 'ATTACK ALL AROUND',
        nationality: 'THAILAND',
        player1: 'CHALALALA',
        player2: 'LAMMYSNAX',
        player3: 'RAIGARD',
        player4: 'POTTRT',
        player5: 'BASBABE',
        win: 7,
        lose: 5,
        point: 21,
        imageUrl: 'assets/images/p3.png',
        team: "assets/images/pp5.jpg",
        country: "assets/images/th.jpg"),
    Project(
        title: 'XERXIA',
        nationality: 'THAILAND',
        player1: 'ROLEX',
        player2: 'ALERT',
        player3: 'LBY',
        player4: 'SURF',
        player5: 'KRX',
        win: 8,
        lose: 8,
        point: 24,
        imageUrl: 'assets/images/p6.jpg',
        team: "assets/images/pp6.jpg",
        country: "assets/images/th.jpg"),
    Project(
        title: 'xxxx',
        nationality: 'xxxx',
        player1: 'ROLEX',
        player2: 'ALERT',
        player3: 'LBY',
        player4: 'SURF',
        player5: 'KRX',
        win: 10,
        lose: 5,
        point: 30,
        imageUrl: '',
        team: "",
        country: "assets/images/th.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Valorant_logo_-_pink_color_version.svg/2560px-Valorant_logo_-_pink_color_version.svg.png',
                  scale: 40,
                ),
              ],
            ),
            Container(
              width: 10,
            ),
            const Text(
              'VALORANT  THAILAND  TEAM',
            ),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontStyle: FontStyle.normal,
        ),
      ),
      body: Container(
        color: Colors.teal[600],
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (BuildContext context, int index) {
            var descriptionStyle = const TextStyle(
                fontSize: 12, color: Colors.black26); // refactor shift + F6
            var amountTexrStyle = const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black26,
            );

            return Card(
              color: Colors.teal[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 8,
              child: InkWell(
                onTap: () {
                  _handleClickProjectItem(projects[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 75,
                            backgroundColor: Colors.black12,
                            child: CircleAvatar(
                              radius: 65,
                              backgroundImage:
                                  AssetImage(projects[index].imageUrl),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    projects[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black,
                                          offset: Offset(2, 3),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Container(
                                  child: Text(
                                    projects[index].nationality,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black,
                                          offset: Offset(2, 3),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    child: Image.asset(projects[index].country,width: 50,height: 30,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleClickProjectItem(Project p) {
    print(p.title);
    debugPrint(p.win.toString());

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProjectDetailPage(
                project: p,
              )),
    );
  }
}
