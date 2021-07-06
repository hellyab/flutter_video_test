import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late BetterPlayerController _betterPlayerController;
  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: 350.0,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                // setState(() {
                //   currentIndex = value;
                // });
              },
              itemCount: mixImgsVideos.length,
              itemBuilder: (context, index) {
                return BetterPlayerListVideoPlayer(
                  BetterPlayerDataSource(BetterPlayerDataSourceType.network,
                      mixImgsVideos[index].imagePath),
                  configuration: BetterPlayerConfiguration(
                      autoPlay: true, aspectRatio: 10 / 9),
                  key: Key(mixImgsVideos.hashCode.toString()),
                  playFraction: 0.8,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Media {
  final String mediaType;
  final String imagePath;
  const Media({required this.imagePath, required this.mediaType});
}

List<Media> mixImgsVideos = [
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263475/iq/7.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263475/iq/7.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263473/iq/9.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263472/iq/6.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263470/iq/1.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263470/iq/3.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263470/iq/5.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263470/iq/2.m3u8",
      mediaType: "Video"),
  Media(
      imagePath:
          "https://res.cloudinary.com/alexlimclarify/video/upload/q_auto/v1623263467/iq/4.m3u8",
      mediaType: "Video"),
];
