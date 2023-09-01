import 'package:flutter/material.dart';

// ignore: camel_case_types
class add_note extends StatefulWidget {
  const add_note({super.key});

  @override
  State<add_note> createState() => _add_noteState();
}

// ignore: camel_case_types
class _add_noteState extends State<add_note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Add Note'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(

            children: [
              TextFormField(
                maxLines: 1,
                maxLength: 30,
                decoration: const InputDecoration(
                  labelText: 'Title Note',
                  prefixIcon: Icon(
                    Icons.note,
                  ),
                ),
              ),
              TextFormField(
                maxLines: 4,
                minLines: 1,
                  decoration: const InputDecoration(
                  labelText: 'Note',
                  prefixIcon: Icon(
                    Icons.note,
                  ),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.all(8.0),
                child: MaterialButton(
                  minWidth: 180,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(
                      () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SizedBox(
                              height: 170,
                              child:  Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Please Choose Image',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.photo,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'From Gallery',
                                              style: TextStyle(
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){},
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.camera_alt,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'From Camera',
                                              style: TextStyle(
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Add Image for Note ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(
                  height: 50,
                  minWidth: 250,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text(
                    'Add Note ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
