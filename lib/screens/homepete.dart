import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:transactionkeeper/enums/transaction_enums.dart';
import 'package:transactionkeeper/screens/home/home.dart';
import 'package:transactionkeeper/screens/new_transaction_page/new_transaction_pagePete.dart';
import 'package:transactionkeeper/widget/transaction_card.dart';




class HomePete extends StatefulWidget {
  @override
  _HomePeteState createState() => _HomePeteState();

}


class _HomePeteState extends State<HomePete> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Transactions"),
    bottom: TabBar(
    controller: tabController,
    tabs: [

    Text(getTransTypeCapitalized(TransactionType.credit)),
    Text(getTransTypeCapitalized(TransactionType.debit)),
        Text('New Transaction'), ],),),
body: TabBarView(
controller: tabController,
children: [
CreditPage(),
DebitPage(),
    NewTransactionPage()
],
),

    bottomNavigationBar: BottomAppBar(
    elevation: 4,
    child: Container(
    height: 60,
    color: Colors.white,
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    Text(
    "Total: ",
    style: TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    fontSize: 28),
    ),
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text(
    "\u20A6",
    style: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    fontSize: 28,
    ),
    ),
    AutoSizeText(
    "500.00",
    minFontSize: 28,
    style: TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
    ),
    )
    ],
    ),
    ),
    ),
    ]),
    ),
    ),),);
    }}


