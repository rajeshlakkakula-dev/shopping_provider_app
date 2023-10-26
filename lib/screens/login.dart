import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text('Welcome', style: Theme.of(context).textTheme.displayLarge),
              TextFormField(
                decoration: const InputDecoration(hintText: 'UserName'),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: const Text('ENTER'))
            ],
          ),
        ),
      ),
    );
  }
}
