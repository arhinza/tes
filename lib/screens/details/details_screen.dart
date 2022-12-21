import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
//import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      //body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions:[
        IconButton(
          color: Colors.black,
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchLegate(),);
            
          },
          icon: const Icon(Icons.search),
          ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
class CustomSearchLegate extends SearchDelegate {
  List<String> searchTerms = [
    'Samsung',
    'Xiaomi',
    'Redmi',
    'Realme',
    'Apple',
    'Vivo',
    'Oppo',
    'Oneplus',
    'Asus'
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(
        icon: const Icon(Icons.clear),
      onPressed: () {
        query = '';
      },
      ),
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (() {
        close(context, null);
      }),
      );
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var HandPhone in searchTerms){
      if (HandPhone.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(HandPhone);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var HandPhone in searchTerms){
      if (HandPhone.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(HandPhone);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}