import 'package:dzikbook/screens/add_diet_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/diet_list.dart';

class DietListScreen extends StatelessWidget {
  static final routeName = '/dietsList';
  @override
  Widget build(BuildContext context) {
    final addToPlan = ModalRoute.of(context).settings.arguments as bool;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Flexible(
              child: ListTile(
                leading: Text(
                  "Diety",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 36),
                  textAlign: TextAlign.start,
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AddDietScreen.routeName);
                  },
                  icon: Icon(
                    Icons.add,
                    color: Theme.of(context).primaryColor,
                    size: 35,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 10,
              child: DietList(
                addToPlans: addToPlan,
              ),
            )
          ],
        ),
      ),
    );
  }
}
