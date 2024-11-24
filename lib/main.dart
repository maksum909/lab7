import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerConfigurator(),
    );
  }
}

class ContainerConfigurator extends StatefulWidget {
  @override
  _ContainerConfiguratorState createState() => _ContainerConfiguratorState();
}

class _ContainerConfiguratorState extends State<ContainerConfigurator> {
  double _width = 150.0;
  double _height = 150.0;
  double _borderRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Configurator'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(_borderRadius),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Width",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _width,
              min: 50,
              max: 300,
              divisions: 10,
              label: "${_width.round()}",
              onChanged: (value) {
                setState(() {
                  _width = value;
                });
              },
            ),
            const Text(
              "Height",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _height,
              min: 50,
              max: 300,
              divisions: 10,
              label: "${_height.round()}",
              onChanged: (value) {
                setState(() {
                  _height = value;
                });
              },
            ),
            const Text(
              "Top-right corner radius",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _borderRadius,
              min: 0,
              max: 150,
              divisions: 10,
              label: "${_borderRadius.round()}",
              onChanged: (value) {
                setState(() {
                  _borderRadius = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
