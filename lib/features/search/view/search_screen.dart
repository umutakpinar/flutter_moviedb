import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: LayoutBuilder(
        builder: (context, viewportConstraints) => ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: viewportConstraints.maxHeight,
            minHeight: viewportConstraints.maxHeight
          ),
          child: const IntrinsicHeight(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Search Screen"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}