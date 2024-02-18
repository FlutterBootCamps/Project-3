import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  SearchWidgetState createState() => SearchWidgetState();
}

class SearchWidgetState extends State<SearchWidget> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        children:<Widget> [
          Expanded(
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), 
                ),
              ),
              onChanged: (value) {
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Handle add button action here if needed
            },
          ),
        ],
      ),
    );
  }
}
