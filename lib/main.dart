import 'package:counter/bnb-pages.dart';

import 'package:counter/feature/faqs/domain/bottom_nav_bar/cubit/bnb_cubit.dart';
import 'package:counter/feature/faqs/domain/display-questions/cubit/faqs_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BnbCubit>(create: (context)=>BnbCubit()),
        BlocProvider<FaqsCubit>(create: ((context) => FaqsCubit()))
      ],
      child:MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       useMaterial3: true,
       
      ),
      home:  const BNBpages(),
      
    ),);
  }
}

