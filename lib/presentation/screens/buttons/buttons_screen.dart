import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 10,
        children: [
          ElevatedButton(onPressed: () => {}, child: const Text('Elevated')),
          const ElevatedButton(
              onPressed: null, child: Text('Elevated Disabled')),
          FilledButton(onPressed: () => {}, child: const Text('Filled')),
          FilledButton.tonal(
              onPressed: () => {}, child: const Text('Filled Tonal')),
          OutlinedButton(onPressed: () => {}, child: const Text('Outlined')),
          TextButton(onPressed: () => {}, child: const Text('Text Button')),
          // Y sus variaciones con íconos
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo_outlined),
              label: const Text('Photo')),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_outlined)),
          const CustomButton()
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Custom Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
