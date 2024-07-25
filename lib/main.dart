import 'package:cartapp/carts/bloc/cart_bloc.dart';
import 'package:cartapp/view/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CartBloc>(
        create: (BuildContext context) => CartBloc()..add(Fetch()),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: MyCart());
  }
}
