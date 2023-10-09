import 'dart:developer';
import 'package:flutter/material.dart';
import '../data/data.dart';
import '../widgets/appbar.dart';
import '../widgets/header.dart';
import '../widgets/list.dart';
import '../widgets/preview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.cast),
        onPressed: () => log('Cast'),
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: const CustomAppBar(),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: ContentHeader(
              featuredContent: ifce,
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
              child: Previews(
                key: PageStorageKey('previews'),
                title: 'Previews',
                contentList: previews,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              key: const PageStorageKey('Extensão'),
              title: 'Extensão',
              contentList: pesquisa, // Use a default value if pesquisa is null
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              key: const PageStorageKey('Extensão'),
              title: 'Extensão',
              contentList: extensao, // Use a default value if extensao is null
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              key: const PageStorageKey('Pós-Graduação'),
              title: 'Pós-Graduação',
              contentList: pos, // Use a default value if pos is null
              isOriginals: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 20),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: const PageStorageKey('Inovação'),
                title: 'Inovação',
                contentList: inovacao, // Use a default value if inovacao is null
              ),
            ),
          ),
        ],
      ),
    );
  }
}
