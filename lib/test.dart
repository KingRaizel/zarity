// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, depend_on_referenced_packages, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Card(
          margin: EdgeInsets.only(left: 10, right: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.indigo[600],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.people_alt,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.task,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
