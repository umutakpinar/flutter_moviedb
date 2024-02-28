import 'package:flutter/material.dart';

class WatchListScreen extends StatefulWidget {
  const WatchListScreen({super.key});

  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("watchlist"),
      ),
      body: LayoutBuilder(
        builder: (context, viewportConstraints) => ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
            maxHeight: viewportConstraints.maxHeight
          ),
          child: const IntrinsicHeight(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Watchlist screen"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}