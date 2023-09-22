import 'package:flutter/material.dart';
import 'package:learnle/SPANISH/alphabets.dart';
import 'package:learnle/SPANISH/animals.dart';
import 'package:learnle/SPANISH/complexGrammerStructure.dart';
import 'package:learnle/SPANISH/money.dart';
import 'package:learnle/SPANISH/numbers.dart';
import 'package:learnle/SPANISH/CommonPhrases.dart';
import 'package:learnle/SPANISH/technicalPage.dart';
import 'package:learnle/customs/profile_page.dart';
import 'package:learnle/telegu/commonPhrases.dart';
import 'package:learnle/telegu/translateTelegu.dart';

class TeleguModelPage extends StatefulWidget {
  const TeleguModelPage({super.key});

  @override
  State<TeleguModelPage> createState() => _TeleguModelPageState();
}

class _TeleguModelPageState extends State<TeleguModelPage> {
  String _selectedCategory = 'all';
  int _selectedTabIndex = 0;

  void _onCategorySelected(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
      _selectedCategory = 'all'; // Reset selected category when switching tabs
    });
  }

  Widget _buildCategoryButton(String category) {
    final isSelected = category == _selectedCategory;
    return ElevatedButton(
      onPressed: () => _onCategorySelected(category),
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.blue : Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: isSelected ? Colors.blue : Colors.grey,
          ),
        ),
      ),
      child: Text(
        category.toUpperCase(),
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (_selectedTabIndex == 0) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCategoryButton('beginner'),
              _buildCategoryButton('intermediate'),
              _buildCategoryButton('advance'),
              _buildCategoryButton('Other'),
            ],
          ),
          Expanded(
            child: _buildContent(),
          ),
        ],
      );
    } else if (_selectedTabIndex == 1) {
      return const TeleguTranslator();
    } else if (_selectedTabIndex == 2) {
      return ProfilePage();
    } else {
      return Container(); // Handle additional tabs as needed
    }
  }

  Widget _buildContent() {
    switch (_selectedCategory) {
      case 'beginner':
        return Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlphabetsPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                          title: Text(
                            "Alphabets",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                          tileColor: Colors.blueGrey),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TeleguCommonPhrases(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                        title: Text(
                          'CommonPharases',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        tileColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SpanishPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                        title: Text(
                          'Numbers and counting',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        tileColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => print('Item 4 pressed'),
                  child: const ListTile(
                    title: Text('Item 4'),
                  ),
                ),
              ],
            ),
          ),
        );
      case 'intermediate':
        return Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SpanishPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                          title: Text(
                            "Food",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                          tileColor: Colors.blueGrey),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimalsPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                        title: Text(
                          'Animals',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        tileColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SpanishMoneyPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                        title: Text(
                          'Money',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        tileColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => print('Item 4 pressed'),
                  child: const ListTile(
                    title: Text('Item 4'),
                  ),
                ),
              ],
            ),
          ),
        );
      case 'advance':
        return Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () => print("Item 1 is pressed"),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                          title: Text(
                            "Business and professional language",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                          tileColor: Colors.blueGrey),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GrammerPage(),
                      ),
                    ),
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                        title: Text(
                          'Complex grammar structures',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        tileColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TechnicalPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 180,
                      child: const ListTile(
                        title: Text(
                          'Technical terms',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        tileColor: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => print('Item 4 pressed'),
                  child: const ListTile(
                    title: Text('Item 4'),
                  ),
                ),
              ],
            ),
          ),
        );
      case 'Other':
        return const Center(
          child: Text('Advance Content'),
        );
      default:
        return const Center(
          child: Text('Please select a the level of content'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Page'),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _onTabSelected,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.translate),
            label: 'Translator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
