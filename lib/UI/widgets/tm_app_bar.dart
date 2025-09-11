import 'package:flutter/material.dart';

class TmAppBar extends StatelessWidget {
  const TmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.white,
      title: Text("Title will be here"),
      subtitle: Column(children: [
          
        ],
      ),
    );
  }
}
