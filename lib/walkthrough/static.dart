// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

List<Map<String, Object>> WALKTHROUGH_ITEMS = [
  {
    'image': 'assets/logo.png',
    'button_text': 'Recording a journal',
    'description_rich': RichText(
        text: TextSpan(children: [
      TextSpan(
        text:
            'Nakuskia is a journalling app designed to help you talk out issues. \n\nThe app leverages the benefits of journalling and talking out issues.\n\nHere is a run down:',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      )
    ])),
    'title': RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Record journals, ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.red,
        ),
      ),
      TextSpan(
        text: 'and have the journal ready for you in text format ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    ])),
  },
  {
    'image': 'assets/logo.png',
    'button_text': 'Recorded Journals',
    'description_rich': RichText(
        text: TextSpan(children: [
      TextSpan(
        text:
            'Once a registered user, you\'re free to record a new journal . \n\nThe journal can be personal, school or work-related. \n\nSo please, take you time, gather your thoughts, and start recording 👌',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    ])),
    'title': RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Feeling Down? ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.red,
        ),
      ),
      TextSpan(
        text: 'worry no more',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    ]))
  },
  {
    'image': 'assets/logo.png',
    'button_text': 'Future Features',
    'description_rich': RichText(
        text: TextSpan(children: [
      TextSpan(
        text:
            'Once you\'ve recorded your journal . \n\nYou will have access to it and the other recorded journals in textual format. \n\nFeel free to look at your journal and enjoy the experience! 👌',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      )
    ])),
    'title': RichText(
        text: TextSpan(children: [
      TextSpan(
        text: 'Revisit your journals! ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.red,
        ),
      ),
      TextSpan(
        text: 'Thought accessibility is our mission',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    ])),
  },
  {
    'image': 'assets/logo.png',
    'button_text': 'Get Started',
    'description_rich': RichText(
        text: TextSpan(children: [
      TextSpan(
        text:
            'Through current advancements in AI, it is possible to have virtual assistants. \n\nIn our case, a virtual friend. \n\nWe are looking to include this in future iterations. \n\n The goal is to help you have a conversation-based experience with the app',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      TextSpan(
        text:
            '\n\nBe on the lookout for these features in the coming months 👍',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    ])),
    'title': RichText(
        // ignore: prefer_const_constructors
        text: TextSpan(children: [
      TextSpan(
        text: 'A friend in need! ',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      TextSpan(
        text: 'Will get a friend indeed!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.red,
        ),
      ),
    ])),
  }
];
