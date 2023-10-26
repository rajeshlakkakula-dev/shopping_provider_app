import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _MyAppBar(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _MyListItem(index)),
          )
        ],
      ),
    );
  }
}

class _MyListItem extends StatelessWidget {
  late final int index;

  _MyListItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
        maxHeight: 45,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}

class _MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'Catalog',
        style: Theme.of(context).textTheme.displayLarge,
      ),
      floating: true,
      actions: [
        IconButton(
            onPressed: () => context.go('/catalog/cart'),
            icon: Icon(Icons.shopping_cart))
      ],
    );
  }
}
