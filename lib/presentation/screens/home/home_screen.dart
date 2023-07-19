import 'package:flutter/material.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final itemMenu = appMenuItems[index];
        return _CustomListTile(itemMenu: itemMenu);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.itemMenu,
  });

  final MenuItem itemMenu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Icon(itemMenu.icon, color: Theme.of(context).colorScheme.primary),
      trailing: Icon(Icons.arrow_forward_ios_outlined,
          color: Theme.of(context).colorScheme.primary),
      title: Text(itemMenu.title),
      subtitle: Text(itemMenu.subTitle),
      onTap: () {
        //Navigator.push(context, );
      },
    );
  }
}
