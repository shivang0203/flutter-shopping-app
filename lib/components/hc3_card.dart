// components/hc3_card.dart
import 'package:fampay_assignment/models/hc_group.dart';
import 'package:flutter/material.dart';
import '../models/card.dart';
import '../models/home_section.dart';

class HC3Card extends StatelessWidget {
  final List<HomeSection> homeSections;

  const HC3Card({Key? key, required this.homeSections}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Filter for HC3 design type
    HCGroup? hc3Group = homeSections
    .expand((section) => section.hcGroups ?? []) // Handle null hcGroups
    .firstWhere(
      (group) => group.designType == 'HC3',
      orElse: () => null, // Return null if no match found
    );

// Use hc3Group safely

    // var hc3Group =
    //     homeSections.expand((section) => section.hcGroups).firstWhere(
    //           (group) => group.designType == 'HC3',
    //           orElse: () => null,
    //         );

    if (hc3Group == null) {
      return Center(child: Text('No HC3 card available'));
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: hc3Group.cards.length,
      itemBuilder: (context, index) {
        var card = hc3Group.cards[index];
        return HC3CardItem(cardItem: card);
      },
    );
  }
}

class HC3CardItem extends StatelessWidget {
  final CardItem cardItem;

  const HC3CardItem({Key? key, required this.cardItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          cardItem.formattedTitle.text.isNotEmpty
              ? Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    cardItem.formattedTitle.text,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(int.parse(cardItem
                          .formattedTitle.entities[0].color
                          .replaceFirst('#', '0xFF'))),
                    ),
                  ),
                )
              : SizedBox.shrink(),
          if (cardItem.bgImage != null)
            Image.network(cardItem.bgImage!.imageUrl),
          if (cardItem.cta.isNotEmpty)
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button click
                  print('Action Button Clicked!');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(int.parse(
                        cardItem.cta[0].bgColor.replaceFirst('#', '0xFF'))),
                  ),
                ),
                child: Text(cardItem.cta[0].text),
              ),
            ),
        ],
      ),
    );
  }
}
