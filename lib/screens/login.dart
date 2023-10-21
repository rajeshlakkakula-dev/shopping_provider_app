import 'package:flutter/cupertino.dart';
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
                decoration: InputDecoration(hintText: 'UserName'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('ENTER'),
                  style: Theme.of(context).elevatedButtonTheme.style)
            ],
          ),
        ),
      ),
    );
  }
}
