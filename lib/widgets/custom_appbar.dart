import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingIcon;
  final String? title;
  final List<Widget>? actions;
  final VoidCallback? onLeadingTap;

  const CustomAppBar({
    Key? key,
    this.leadingIcon,
    this.title,
    this.actions,
    this.onLeadingTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: leadingIcon ??
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onLeadingTap ?? () {},
          ),
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(color: Colors.black),
            )
          : null,
      actions: actions ?? [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
