import 'package:counter/feature/faqs/presentaion/widgets/eco_fag_widget.dart';
import 'package:counter/feature/faqs/presentaion/widgets/question_answer.dart';
import 'package:flutter/material.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() {
    return _FAQsState();
  }
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  alignment: Alignment.centerLeft,
                  child: buildReusableText()),
              // Note: Same code is applied for the TextFormField as well
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: buildSearchFormField(),
              ),
              const SizedBox(
                height: 20,
              ),
           const   FAQsDisplay(question: 'What is a subscribtion in a weste management app?', answer: 'The anser to this question will appear here latter',),
             
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 5,
                color: Colors.black,
              ),
              const SizedBox(
                height: 5,
              ),
              const   FAQsDisplay(question: 'How do i subscribe to the premium feature?', answer: 'The anser to this question will appear here latter',),
              
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 5,
                color: Colors.black,
              ),
              const SizedBox(
                height: 5,
              ),
               const   FAQsDisplay(question: 'How much does a subscribtion to EcoCaasitech cost?', answer: 'The anser to this question will appear here latter',),
              // buildTextForm(
              //     text: 'How much does a subscribtion to EcoCaasitech cost?'),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 5,
                color: Colors.black,
              ),
              const SizedBox(
                height: 5,
              ),
              const   FAQsDisplay(question: 'Can I cancel my subscrition?', answer: 'The anser to this question will appear here latter',),
              // buildTextForm(text: 'Can I cancel my subscrition?'),
// ExpandableContainer(question: 'How can i book',answer: 'Use the app',),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 5,
                color: Colors.black,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Ask a question',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              textArea(),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildButton(
                      label: 'Send',
                      type: 'send',
                      color: const Color.fromRGBO(76, 172, 62, 1)),
                  const SizedBox(
                    width: 10,
                  ),
                  buildButton(
                      label: 'Cancel',
                      type: 'cancel',
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

 
}
