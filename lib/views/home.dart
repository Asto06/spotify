// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:spotify/views/album_view.dart';
import 'package:spotify/widgets/song_card.dart';

import 'package:spotify/widgets/album_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .6,
          decoration: BoxDecoration(
            color: Color(0xFf1C7A74),
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1)
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Played",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 16),
                            Icon(Icons.settings),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(
                      16,
                    ),
                    child: Row(
                      children: [
                        AlbumCard(
                          label: "Best Mode",
                          image: AssetImage("assets/images/album4.jpg"),
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlbumView(),
                              ),
                            )
                          },
                        ),
                        SizedBox(width: 16),
                        AlbumCard(
                          label: "Motivation Mix",
                          image: AssetImage("assets/images/album9.jpg"),
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlbumView(),
                              ),
                            )
                          },
                        ),
                        SizedBox(width: 16),
                        AlbumCard(
                          label: "Top 50-global",
                          image: AssetImage("assets/images/top50.jpg"),
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlbumView(),
                              ),
                            )
                          },
                        ),
                        SizedBox(width: 16),
                        AlbumCard(
                          label: "Child Mode",
                          image: AssetImage("assets/images/album2.jpg"),
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlbumView(),
                              ),
                            )
                          },
                        ),
                        SizedBox(width: 16),
                        AlbumCard(
                          label: "Top 10's Song",
                          image: AssetImage("assets/images/album7.jpg"),
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AlbumView(),
                              ),
                            )
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Good Evening",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            RowAlbumCard(
                              label: "Top 50 global songs",
                              image: AssetImage("assets/images/top50.jpg"),
                            ),
                            SizedBox(width: 16),
                            RowAlbumCard(
                              label: "Top 50 global songs",
                              image: AssetImage("assets/images/album1.jpg"),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            RowAlbumCard(
                              label: "Top 50 global songs",
                              image: AssetImage("assets/images/album2.jpg"),
                            ),
                            SizedBox(width: 16),
                            RowAlbumCard(
                              label: "Top 50 global songs",
                              image: AssetImage("assets/images/album5.jpg"),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            RowAlbumCard(
                              label: "Top 50 global songs",
                              image: AssetImage("assets/images/album9.jpg"),
                            ),
                            SizedBox(width: 16),
                            RowAlbumCard(
                              label: "Top 50 global songs",
                              image: AssetImage("assets/images/album10.jpg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Based on your recent listening",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SongCard(
                              image: AssetImage('assets/images/album2.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album6.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album9.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album4.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album1.jpg'),
                            ),
                            SizedBox(width: 16),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Recommended Radio",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SongCard(
                              image: AssetImage('assets/images/album8.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album5.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album6.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album1.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album3.jpg'),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage('assets/images/album10.jpg'),
                            ),
                            SizedBox(width: 16),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(4),
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Image(
            image: image,
            height: 48,
            width: 40,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 5),
          Text(label)
        ],
      ),
    );
  }
}
