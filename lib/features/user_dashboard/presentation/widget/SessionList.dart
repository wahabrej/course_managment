import 'package:flutter/material.dart';

class SessionList extends StatelessWidget {
  final List<Map<String, String>> sessions = [
    {'session': 'Session 1', 'title': 'Introduction to Basic Grammar', 'week': 'week 1', 'enabled': 'true'},
    {'session': 'Session 2', 'title': 'Building Simple Sentences', 'week': 'week 1', 'enabled': 'true'},
    {'session': 'Session 3', 'title': 'Mastering Everyday Vocabulary', 'week': 'week 2', 'enabled': 'false'},
    {'session': 'Session 4', 'title': 'Understanding Verb Tenses', 'week': 'week 2', 'enabled': 'false'},
    {'session': 'Session 5', 'title': 'Essential Pronunciation Skills', 'week': 'week 3', 'enabled': 'false'},
  ];

   SessionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sessions List'),
      ),
      body: ListView.builder(
        itemCount: sessions.length,
        itemBuilder: (context, index) {
          final session = sessions[index];
          final isEnabled = session['enabled'] == 'true';

          return ListTile(
            title: Text(
              '${session['session']!}: ${session['title']!}',
              style: TextStyle(
                color: isEnabled ? Colors.black : Colors.grey,
                fontWeight: isEnabled ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            subtitle: Text(
              session['week']!,
              style: TextStyle(
                color: isEnabled ? Colors.black : Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: SessionList()));
