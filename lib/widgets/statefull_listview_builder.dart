import 'package:flutter/material.dart';

void main() => runApp(StatefulListViewBuilder());

class StatefulListViewBuilder extends StatefulWidget {
  @override
  _StatefulListViewBuilder createState() => _StatefulListViewBuilder();
}

class _StatefulListViewBuilder extends State<StatefulListViewBuilder> {
  List<String>? value;
  @override
  void initState() {
    super.initState();

    value = loadvalue();
    //print(loadvalue());
  }

  List<String> loadvalue() {
    List<String> name = [];
    name.addAll(["stalin", "tom"]);
    return name;
  }

  // Another Method
  // List<dynamic> loadvalue() {
  //   List customers = [];
  //   customers.add(Customer('Jack', 23));
  //   customers.add(Customer('Adam', 27));
  //   customers.add(Customer('Katherin', 25));
  //   return customers;
  // }

//   class Customer {
//   String name;
//   int age;

//   Customer(this.name, this.age);

//   @override
//   String toString() {
//     return '{ ${this.name}, ${this.age} }';
//   }
// }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("A Simple App Stateful Widget")),
          body: ListView.builder(
              itemCount: value!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: const Icon(Icons.list),
                    trailing: Text(
                      value![index],
                      style: const TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    onTap: () {},
                    title: Text(value![index]));
              }),
        ));
  }
}
