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
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _buildRow1(),
                SizedBox(height: 16),
                _buildRow2(),
                SizedBox(height: 16),

              ],
            ),
          ),
        ),
      ),
    );
  }

  // Refactored Row 1
  Widget _buildRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildColoredContainer(Colors.red, 60, 59),
        SizedBox(width: 16),
        Expanded(
          child: _buildColoredContainer(Colors.blue, 60, 60),
        ),
        SizedBox(width: 16),
        _buildColoredContainer(Colors.orange, 60, 60),
      ],
    );
  }

  // Refactored Row 2
  Widget _buildRow2() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildColoredContainer(Colors.teal, 50, 50),
            SizedBox(height: 16),
            _buildColoredContainer(Colors.blueGrey, 40, 40),
            SizedBox(height: 16),
            _buildColoredContainer(Colors.amber, 30, 30),
            Divider(),
            _buildRowWithStack(),
            Divider(),
            Text('Abdurabh'),
          ],
        ),
      ],
    );
  }

  // Method to generate a colored container widget
  Widget _buildColoredContainer(Color color, double height, double width) {
    return Container(
      color: color,
      height: height,
      width: width,
    );
  }

  // Refactored Row with Stack
  Widget _buildRowWithStack() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 100.0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildStackedContainer(100.0, Colors.transparent),
              _buildStackedContainer(80.0, Colors.white24),
              _buildStackedContainer(65.0, Colors.black),
              _buildStackedContainer(48.0, Colors.white30),
            ],
          ),
        ),
      ],
    );
  }

  // Method to generate stacked container inside CircleAvatar
  Widget _buildStackedContainer(double size, Color color) {
    return Container(
      height: size,
      width: size,
      color: color,
    );
  }
}
