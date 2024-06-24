import 'package:flutter/material.dart';
import 'package:healnet/pages/home_page.dart';
import 'package:healnet/pages/searchingPart.dart';

void main() {
  runApp(const MyApp());
}

class PharmacyPage extends StatefulWidget {
  const PharmacyPage({super.key});

  @override
  State<PharmacyPage> createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.local_pharmacy, color: Color.fromARGB(255, 244, 202, 252)),
                  child: Text(
                    'Medicines',
                    style: TextStyle(color: Color.fromARGB(255, 244, 202, 252)),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart, color: Color.fromARGB(255, 244, 202, 252)),
                  child: Text(
                    'Orders',
                    style: TextStyle(color: Color.fromARGB(255, 244, 202, 252)),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.info, color: Color.fromARGB(255, 244, 202, 252)),
                  child: Text(
                    'About',
                    style: TextStyle(color: Color.fromARGB(255, 244, 202, 252)),
                  ),
                ),
              ],
            ),
            title: const Text('Pharmacy'),
          ),
          body: const TabBarView(
            children: [
              MedicineTab(),
              Center(child: Text('Medicines Tab Content')),
              AboutTab(),
            ],
          ),
        ),
      ),
    );
  }
}

// class MedicineTab extends StatefulWidget {
//   const MedicineTab({super.key});
//
//   @override
//   State<MedicineTab> createState() => _MedicineTabState();
// }
//
// class _MedicineTabState extends State<MedicineTab> {
//   final String _searchText = '';
//
//   final List<Map<String, dynamic>> _items = [
//     {'icon': Icons.favorite, 'color': Colors.blue, 'label': 'Heart', 'page': const heartPage()},
//     {'icon': Icons.local_hospital, 'color': Colors.green, 'label': 'Hospital', 'page': const HospitalPage()},
//     {'icon': Icons.healing, 'color': Colors.red, 'label': 'Healing', 'page': HomePage()},
//     {'icon': Icons.fitness_center, 'color': Colors.orange, 'label': 'Fitness', 'page': HomePage()},
//     {'icon': Icons.local_pharmacy, 'color': Colors.purple, 'label': 'Pharmacy', 'page': HomePage()},
//     {'icon': Icons.spa, 'color': Colors.teal, 'label': 'Wellness', 'page': HomePage()},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> _filteredItems = _items
//         .where((item) =>
//             item['label'].toLowerCase().contains(_searchText.toLowerCase()))
//         .toList();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Search Medicine',
//           style: TextStyle(fontSize: 16),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {
//               showSearch(
//                 context: context,
//                 delegate: CustomSearchDelegate(_items),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.count(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           children: _filteredItems.map((item) {
//             return GestureDetector(
//               onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => item['page']),
//               ),
//               child: Container(
//                 color: item['color'],
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Icon(item['icon'], size: 50, color: Colors.white),
//                     Text(item['label'], style: const TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
//
// class CustomSearchDelegate extends SearchDelegate {
//   final List<Map<String, dynamic>> items;
//
//   CustomSearchDelegate(this.items);
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     List<Map<String, dynamic>> _filteredItems = items
//         .where((item) =>
//             item['label'].toLowerCase().contains(query.toLowerCase()))
//         .toList();
//
//     return GridView.count(
//       crossAxisCount: 3,
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//       children: _filteredItems.map((item) {
//         return GestureDetector(
//           onTap: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => item['page']),
//           ),
//           child: Container(
//             color: item['color'],
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(item['icon'], size: 50, color: Colors.white),
//                 Text(item['label'], style: const TextStyle(color: Colors.white)),
//               ],
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<Map<String, dynamic>> _filteredItems = items
//         .where((item) =>
//             item['label'].toLowerCase().contains(query.toLowerCase()))
//         .toList();
//
//     return GridView.count(
//       crossAxisCount: 3,
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//       children: _filteredItems.map((item) {
//         return GestureDetector(
//           onTap: () => Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => item['page']),
//           ),
//           child: Container(
//             color: item['color'],
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(item['icon'], size: 50, color: Colors.white),
//                 Text(item['label'], style: const TextStyle(color: Colors.white)),
//               ],
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }
// }

// class HeartPage extends StatelessWidget {
//   const HeartPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Heart Page'),
//       ),
//       body: const Center(
//         child: Text('Content for Heart Page'),
//       ),
//     );
//   }
// }

//////////////////////////////////////////////////////THIRD TAB//////////////////////////////////////////////////////////////////
class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Text(
            'Services Offered:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '- Prescription Refills\n- Over-the-counter Medications\n- Health and Wellness Products',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 50),
          Text(
            'Contact Information:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Address:  390/F, Kiriwaththuduwa Rd, Kahathuduwa, Gonapola Junction',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Phone:  (+94) 112-704-409',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Email:  info@healnetpharmacy.com',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
