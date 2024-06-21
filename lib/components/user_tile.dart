import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const UserTile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(Icons.person, color: Theme.of(context).colorScheme.secondary,),
      ),

      title: Text(title),
      onTap: onTap,
    );
  }
}
