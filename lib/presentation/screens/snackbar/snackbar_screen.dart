import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void openDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text(
                  'Ut excepteur elit anim minim Lorem enim incididunt ex qui laboris exercitation. Commodo ullamco consequat qui laborum aliquip enim tempor nisi. Culpa enim qui irure proident aliquip anim officia officia voluptate culpa esse. Laborum do anim ut proident eiusmod voluptate est culpa proident sint est ad esse elit. Sunt nisi adipisicing enim labore voluptate ex occaecat reprehenderit eiusmod. Elit excepteur voluptate commodo veniam.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancel')),
                FilledButton(onPressed: () {}, child: const Text('Accept')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars and Dialogs'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context);
              },
              child: const Text('Licenses')),
          FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Show dialog'))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text('Hello World'),
            action: SnackBarAction(label: 'CANCEL', onPressed: () {}),
          ));
        },
        label: const Text('Show snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
