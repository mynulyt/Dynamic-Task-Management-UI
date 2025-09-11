import 'package:flutter/material.dart';

class TmAppBar extends StatelessWidget {
  const TmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        spacing: 8,
        children: [
          CircleAvatar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Full Name",
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
    );
  }

  Size get PreferredSize => Size.fromHeight(kToolbarHeight);
}
