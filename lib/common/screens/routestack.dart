import 'package:flutter/material.dart';

class RouteStack extends StatefulWidget {
  const RouteStack({Key? key}) : super(key: key);

  @override
  State<RouteStack> createState() => _RouteStackState();
}

class _RouteStackState extends State<RouteStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Baadhi Team Presence",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
