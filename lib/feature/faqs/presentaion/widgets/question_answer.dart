import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQsDisplay extends StatefulWidget {
  final String question;
  final String answer;
  const FAQsDisplay(
      {super.key, required this.question, required this.answer});

  @override
  // ignore: library_private_types_in_public_api
  __FAQsDisplayState createState() => __FAQsDisplayState();
}

class __FAQsDisplayState extends State<FAQsDisplay> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: _toggleExpand,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.question,
                      style:  GoogleFonts.poppins(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)
                                // const TextStyle(fontSize: 16,color: Color.fromARGB(255, 15, 1, 1),fontWeight: FontWeight.w400,),
                                ),
                  ),
                  Icon(
                    _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Expanded(
                child: Text(
                  widget.answer,
                  style: const TextStyle(fontSize: 14, color: Colors.green),
                ),
              ),
            ),
        ],
      ),
    );
  }
}


// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Expandable Container Example'),
//       ),
//       body: _FAQsDisplayState(),
//     ),
//   ));
// }
