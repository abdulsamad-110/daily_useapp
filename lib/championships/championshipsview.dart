// import 'package:flutter/material.dart';

// class Championshipsview extends StatelessWidget {
//   const Championshipsview({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text(
//             'Flutter Simple TabBar',
//             style: TextStyle(fontSize: 18),
//           ),
//           bottom: const TabBar(tabs: [
//             Tab(
//               icon: Icon(Icons.cloud_outlined),
//             ),
//             Tab(
//               icon: Icon(Icons.beach_access_sharp),
//             ),
//             Tab(
//               icon: Icon(Icons.brightness_5_sharp),
//             ),
//           ]),
//         ),
//         body: const TabBarView(children: [
//           Center(
//             child: Text('Its cloudy here'),
//           ),
//           Center(
//             child: Text('Its rainy here'),
//           ),
//           Center(
//             child: Text('Its sunny here'),
//           ),
//         ]),
//       ),
//     );
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     centerTitle: true,
//     //     title: const Text('TabBar'),
//     //   ),
//     // body: const Center(
//     //   child: Text(
//     //     'Welcome to Championships',
//     //     style: TextStyle(fontSize: 22),
//     //   ),
//     // ),
//   }
// }
import 'package:flutter/material.dart';

class ChampionshipsView extends StatelessWidget {
  const ChampionshipsView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Flutter simple TabBar',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorWeight: 8.0, // Thickness of the underline
            indicatorColor: Colors.deepOrange, // Underline color
            labelColor: Colors.deepOrange, // Selected icon color
            unselectedLabelColor: Colors.grey, // Unselected icon color
            tabs: [
              Tab(
                icon: Icon(Icons.cloud_outlined),
                text: "Cloudy",
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
                text: "Rainy",
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
                text: "Sunny",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'It\'s cloudy here',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Center(
              child: Text(
                'It\'s rainy here',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Center(
              child: Text(
                'It\'s sunny here',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
