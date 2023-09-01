import 'package:flutter/material.dart';
import 'package:note/add_note.dart';

// ignore: camel_case_types
class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

// ignore: camel_case_types
class _home_pageState extends State<home_page> {
  List note = [
    "A rose by any other name would smell as sweet.",
    "All that glitters is not gold.",
    "Eighty percent of success is showing up.",
    "I have a dream that my four little children will one day"
        "live in a nation where they will not be judged by the color"
        " of their skin but by the content of their character.",
    "I have always depended on the kindness of strangers.",
    "I love the smell of napalm in the morning.",
    "I think therefore I am.",
    "If at first you don’t succeed, try, try again.",
    "If you are going through hell, keep going.",
    "If you build it, they will come.",
    "If you want something done right, do it yourself.",
    "If you want something said, ask a man; if you want something done,",
    " ask a woman.",
    " I'll be back.	",
    "I'm gonna make him an offer he can't refuse.",
    "I've got a feeling we're not in Kansas anymore.	",
    "Keep your friends close, but your enemies closer.	",
    "Knowledge is power.",
    " Life is like a box of chocolates. You never know what you’re gonna get.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (con) {
                  return const add_note();
                },
              ),
            );
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Notes'),
      ),
      body: ListView.builder(
        itemCount: note.length,
        itemBuilder: (con, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                'Note ${i + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                '${note[i]}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(

                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                ),
              ),
              leading: Image.asset(
                'images/images.png',
              ),
            ),
          );
        },
      ),
    );
  }
}
