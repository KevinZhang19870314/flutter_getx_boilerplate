import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/models/bank_card.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:flutter_getx_boilerplate/shared/widgets/focused_menu/focused_menu_holder.dart';

import 'bank_card_box.dart';

class CardsScreen extends StatefulWidget {
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  List<BankCard> cards = [];

  @override
  void initState() {
    super.initState();
    cards.add(
      BankCard(cardBrand: 'VISA', cardNumber: '1234', cardNumberM: '1234'),
    );
    cards.add(
      BankCard(cardBrand: 'VISA', cardNumber: '1111', cardNumberM: '1111'),
    );
    cards.add(
      BankCard(
          cardBrand: 'MasterCard', cardNumber: '2222', cardNumberM: '2222'),
    );
    cards.add(
      BankCard(cardBrand: 'VISA', cardNumber: '7777', cardNumberM: '7777'),
    );
    cards.add(
      BankCard(
          cardBrand: 'MasterCard', cardNumber: '8888', cardNumberM: '8888'),
    );
    cards.add(
      BankCard(cardBrand: 'VISA', cardNumber: '8765', cardNumberM: '8765'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidget.appBar(
        context,
        'Cards',
        Icons.arrow_back,
        Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        height: SizeConfig().screenHeight * .7,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            BankCard card = cards[index];
            return FocusedMenuHolder(
              child: BankCardBox(
                cardType: card.cardBrand,
                cardNum: card.cardNumber,
              ),
              menuContent: _buildMenuItems(card),
            );
          },
          itemCount: cards.length,
        ),
      ),
    );
  }

  Widget _buildMenuItems(BankCard card) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildMenuButton('Unbind card', hexToColor('#007AFF'), onTap: () {
            print('Unbind card');
            Navigator.of(context).pop();
          }),
          CommonWidget.rowHeight(height: 10.0),
          _buildMenuButton('Cancel', Colors.grey, onTap: () {
            Navigator.of(context).pop();
          }),
        ],
      ),
    );
  }

  Widget _buildMenuButton(String text, Color color, {required Function onTap}) {
    return SizedBox(
      width: double.infinity,
      height: 60.0,
      child: TextButton(
        onPressed: () {
          onTap();
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
            side: BorderSide(color: Colors.transparent),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
