import 'package:counter/bnb-pages.dart';
import 'package:counter/cubit/counter_cubit.dart';
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    BlocProvider.of<CounterCubit>(context).increament();
  }

  void _decrementCounter() {
    BlocProvider.of<CounterCubit>(context).decreament();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocConsumer<CounterCubit, CounterState>(
                listener: (context, state) {
                  if (state.wasIncreamented) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Increamented'),
                        duration: const Duration(seconds: 3),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Perform some undo action
                          },
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                    const  SnackBar(
                        content:  Text('Decremented'),
                        duration:  Duration(milliseconds: 300),
                        
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return Text(
                    '${state.countValue}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
