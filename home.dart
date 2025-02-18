import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                RowWithContainers(),
                const SizedBox(height: 16),
                RowAndColumnWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Row with containers
class RowWithContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.red,
          height: 60,
          width: 60,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            color: Colors.blue,
            height: 60,
            width: 60,
          ),
        ),
        const SizedBox(width: 16),
        Container(
          color: Colors.orange,
          height: 60,
          width: 60,
        ),
      ],
    );
  }
}

// Column with nested widgets and stack inside CircleAvatar
class RowAndColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Ensure it takes only as much space as needed
          children: [
            Container(
              color: Colors.teal,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.blueGrey,
              height: 40,
              width: 40,
            ),
            const SizedBox(height: 16),
            Container(
              color: Colors.amber,
              height: 30,
              width: 30,
            ),
            const Divider(),
            CircleAvatarWithStack(),
            const Divider(),
            const Text('ِAbdurabh'),
          ],
        ),
      ],
    );
  }
}

// CircleAvatar with a Stack of containers inside it
class CircleAvatarWithStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.deepPurpleAccent,
      radius: 100.0,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              height: 100.0,
              width: 100.0,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.white24,
              height: 80,
              width: 80,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black,
              height: 65,
              width: 65,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black,
              height: 48,
              width: 48,
            ),
          ),
        ],
      ),
    );
  }
}
