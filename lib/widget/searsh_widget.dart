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
        children: [
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
            Image.asset('icons/border.png'),
        ],
      ),
    );
  }
}

















// import 'package:flutter/material.dart';

// class SearchWidget extends StatelessWidget {
//   final TextEditingController controller;
//   final Function(String) onSearch;
//   final VoidCallback onMenuPressed; // Callback for when the menu button is pressed

//   SearchWidget({
//     required this.controller,
//     required this.onSearch,
//     required this.onMenuPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             blurRadius: 4,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: controller,
//               decoration: InputDecoration(
//                 hintText: "Search",
//                 border: InputBorder.none,
//                 prefixIcon: Icon(Icons.search),
//               ),
//               onSubmitted: (value) {
//                 onSearch(value);
//               },
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.padding_rounded),
//             onPressed: onMenuPressed,
//           ),
//         ],
//       ),
//     );
//   }
// }
