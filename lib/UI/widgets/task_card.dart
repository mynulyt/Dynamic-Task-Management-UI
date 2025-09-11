import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.white,
      title: Text("Title will be here"),
      subtitle: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Description of Task"),
          Text(
            "Date:10/10/2025",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),

          Row(
            children: [
              Chip(
                label: Text("New"),

                backgroundColor: Colors.blue,
                labelStyle: TextStyle(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.grey),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
