// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:grocery_store/repositories/models/product_model_data.dart';
import 'package:grocery_store/repositories/presentation/views/home/bloc/home_bloc.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_checkout_outlined),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search_off_outlined),
    label: 'Search',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.favorite_border),
    label: 'wishList',
  ),
];

const List<Widget> bottomNavViews = <Widget>[
  Home(),
  Text('Cart'),
  Text('Search'),
  Text('WishList'),
];

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(
            // checks bottom navigation state
            child: bottomNavViews.elementAt(state.tabIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            // this returns current taped index
            currentIndex: state.tabIndex,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<HomeBloc>(context)
                  .add(TapChanged(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final successState = state as HomeLoadedSucessState;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Center(
              child: ListView.builder(
                  itemCount: successState.products.lenght,
                  itemBuilder: (contex, index) {
                    return ProductTile(
                      productModelData: successState.products[index],
                    );
                  }));
        },
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  //asking for  accesssimg the class perimiters

  final ProductModelData productModelData;
  const ProductTile({
    Key? key,
    required this.productModelData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(productModelData.imageUrl),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(productModelData.price)
        ],
      ),
    );
  }
}
