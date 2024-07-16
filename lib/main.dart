import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_product_list/injection/injection.dart';
import 'package:flutter_product_list/presentation/cubit/product_cubit.dart';
import 'package:flutter_product_list/presentation/screens/product_list_screen.dart';

void main() {
  configureDependencies(); // Initialize dependencies
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProductCubit>()..fetchProducts(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Product List',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          ),
        ),
        home: ProductListScreen(),
      ),
    );
  }
}
