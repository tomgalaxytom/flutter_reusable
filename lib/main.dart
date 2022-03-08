import 'package:flutter/material.dart';
import 'package:flutter_reusable/widgets/sizedbox.dart';

import 'const/constant.dart';
import 'widgets/asset_image.dart';
import 'widgets/asset_image_with_opacity.dart';
import 'widgets/build_burger_widget.dart';
import 'widgets/build_layout.dart';
import 'widgets/build_rounded_box.dart';
import 'widgets/build_subject.dart';
import 'widgets/checkbox.dart';
import 'widgets/flutter_container.dart';
import 'widgets/icon_card_widget.dart';
import 'widgets/image_decoration.dart';
import 'widgets/listview_with_horizandal.dart';
import 'widgets/network_image_no_opacity.dart';
import 'widgets/network_image_widget.dart';
import 'widgets/network_image_with_opacity.dart';
import 'widgets/passwordfield.dart';
import 'widgets/radiobutton.dart';
import 'widgets/rounded_button.dart';
import 'widgets/row_widget_with_star.dart';
import 'widgets/row_wise_build_icon.dart';
import 'widgets/search_box.dart';
import 'widgets/star_with_column.dart';
import 'widgets/statefull_listview_builder.dart';
import 'widgets/textinputfield.dart';

//use flutter_fade_anim

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Flutter Drawer Demos';
  final listviewTitle = 'List view Page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/home',
      routes: {
        // '/splash': (context) => SwipPage(),
        '/home': (context) => MyHomePage(title: appTitle),
        '/listview': (context) => ListViewPage(title: listviewTitle),
        //'/contactus': (context) => Contactus(),

        //'/aboutus': (context) => LoginScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 0,
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                //RadioButtonWidget(),
                //CheckboxWidget(),
                // StatefulListViewBuilder()
                BuildLayout(),
                SizedBoxWidget(heightvalue: 10),
                RowWidgetWithStar(),
                SizedBoxWidget(heightvalue: 10),
                ColumnWidget(),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Stalin Thomas"),
                accountEmail: Text("stalingalaxy@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/home');
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("List View"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/listview');
                },
              ),
              ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/contactus');
                },
              ),
            ],
          ),
        ));
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final info = [
      Info(fname: "stalin", lname: "thomas", hometown: "kmu"),
      Info(fname: "pakkiyaraj", lname: "ramar", hometown: "theni"),
      Info(fname: "jeyamurugan ", lname: "murugan", hometown: "cuddalore"),
    ];

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stalin(info: info),
    );
  }
}

class Info {
  final String? fname;
  final String? lname;
  final String? hometown;
  Info({this.fname, this.lname, this.hometown});
}

class Stalin extends StatelessWidget {
  final List<Info>? info;
  const Stalin({this.info});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: info!.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
                title: Text(info![index].fname!),
                leading: const Icon(Icons.list),
                trailing: Text(
                  info![index].hometown!,
                )),
          );
        });
  }
}
