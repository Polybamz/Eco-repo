import 'package:counter/feature/faqs/domain/bottom_nav_bar/cubit/bnb_cubit.dart';
import 'package:counter/feature/faqs/presentaion/screens/eco_faq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BNBpages extends StatefulWidget {
  const BNBpages({super.key});

  @override
  State<BNBpages> createState() => _BNBpagesState();
}

class _BNBpagesState extends State<BNBpages> {
  

  List<Widget> pages = [
    const FAQs(),
    const Center(
      child: Text('Empty'),
    ),
    const Center(
      child: Text('Empty'),
    ),
    const Center(
      child: Text('Empty'),
    ),
    // const Center(
    //   child: Text('Empty'),
    // )
  ];
  @override
  Widget build(BuildContext context) {
    final bnbCubit = BlocProvider.of<BnbCubit>(context);
    return BlocBuilder<BnbCubit, BnbState>(

      builder: (context, state) {
        return Scaffold(
          body: pages[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedItemColor: Colors.black,
            currentIndex: state.currentIndex,
            onTap: (index) {
             bnbCubit.updateCurrentIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 29,
                    color: Colors.green,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage("assets/icons/event.png")),
                // Icon(Icons.book,color: Colors.green,),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage("assets/icons/history.png")),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Image(image: AssetImage("assets/icons/person.png")),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
