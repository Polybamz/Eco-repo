 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(76, 172, 62, 1),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          )),
      actions: [
        notificationBar(),
        const SizedBox(
          width: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16,
            child: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }

  Widget notificationBar() {
    return Stack(
      children: [
        Image.asset('assets/icons/notifications.png'),
        Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration:
                  BoxDecoration(color: Colors.red[900], shape: BoxShape.circle),
            ))
      ],
    );
  }

  Widget buildButton({label, color, border, type = 'send', action}) {
    return GestureDetector(
        onTap: action,
        child: Container(
            width: 129,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: border,
              color: color,
            ),
            child: Center(
              child: Text(label,
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: type == 'send' ? Colors.white : Colors.black,
                  )),
            )));
  }

  Widget textArea({controller}) {
    return SizedBox(
      // height: 300,
      child: TextField(
        controller: controller,
        maxLines: null,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          // hintText: 'Enter yo text',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget buildTextForm({String text = '', action}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Text(text,
              style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)
              // const TextStyle(fontSize: 16,color: Color.fromARGB(255, 15, 1, 1),fontWeight: FontWeight.w400,),
              ),
        ),
        IconButton(
            onPressed: action,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 30,
            )),
      ],
    );
  }

  Row buildSearchFormField({controller}) {
    return Row(
      children: [
        const Padding(
          padding:
              EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Icon(Icons.search),
        ),
        Expanded(
          child: TextFormField(
            
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              border: InputBorder.none,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8, right: 20),
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Text buildReusableText() {
    return Text('FAQs and Support',
        textAlign: TextAlign.start,
        style:
         TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 20,
          fontFamily: GoogleFonts.poppins().fontFamily
        ),
        );
  }