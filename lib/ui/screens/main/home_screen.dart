import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:summaries_app/static/subjects_list.dart';
import 'package:summaries_app/ui/widgets/app_app_bar.dart';
import 'package:summaries_app/ui/widgets/app_card.dart';
import 'package:summaries_app/ui/widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      endDrawer: const AppDrawer(),
      body: _buildBody(context),
    );
  }

  _buildAppBar() {
    return AppAppBar(
      title: "Summaries App",
      size: MediaQuery.of(context).size,
      subjectScreen: true,
    );
  }

  _buildBody(context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      physics: const BouncingScrollPhysics(),
      itemCount: getSubjectsList.length,
      itemBuilder: (context, index) {
        return AppCard(
          text: getSubjectsList[index],
          fontSize: 32,
          onPressed: () {
            Navigator.pushNamed(context, '/contents');
          },
          addIcon: false,
        );
      },
    );
  }
}
