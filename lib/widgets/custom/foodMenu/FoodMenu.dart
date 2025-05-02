import 'package:App/widgets/custom/custom_list_card.dart';
import 'package:flutter/material.dart';

class Foodmenu extends StatefulWidget {
  final Function({int? categoryId}) onFilterSelected;
  const Foodmenu({super.key, required this.onFilterSelected});

  @override
  State<Foodmenu> createState() => _FoodmenuState();
}

class _FoodmenuState extends State<Foodmenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;
  final List<String> categories = [
    'All',
    'Pizza',
    'Pasta',
    'Salada',
    'Sushi',
    'Coxinhas',
    'Outros',
  ];

  final List<IconData> icons = [
    Icons.fastfood,
    Icons.local_pizza,
    Icons.ramen_dining,
    Icons.eco,
    Icons.local_dining,
    Icons.local_dining,
    Icons.fastfood,
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: categories.length, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8.0)),
        SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                          widget.onFilterSelected(
                              categoryId: index == 0 ? null : index);
                          _tabController.index = index;
                        });
                      },
                      child: CustomListCard(
                        title: categories[index],
                        icon: icons[index],
                        isSelected: _selectedIndex == index,
                      ),
                    ),
                  );
                })),
      ],
    );
  }
}
