import 'package:belajar_flutter/dataWord.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class listWord extends StatefulWidget {
  const listWord({Key? key}) : super(key: key);

  @override
  State<listWord> createState() => _listWordState();
}

class _listWordState extends State<listWord> {
  final _wordData = <WordPair>[];
  bool _isLoading = true;
  bool _isMoreData = true;
  final _datafetcher = PengambilData();

  @override
  void initState() {
    //To Do implement initState
    super.initState();
    _isLoading = true;
    _isMoreData = true;
    _loadDataMore();
  }

  @override
  Widget build(BuildContext context) {
    return _Container();
  }

  Widget _Container() {
    return ListView.builder(
        itemCount: _isMoreData ? _wordData.length + 1 : _wordData.length,
        itemBuilder: (context, i) {
          if (i >= _wordData.length) {
            if (!_isLoading) {
              _loadDataMore();
            }
            return Center(
                child: SizedBox(
              child: const CircularProgressIndicator(),
              height: 20,
              width: 20,
            ));
          }
          return ListTile(
            leading: Text(
              i.toString(),
              style: TextStyle(fontSize: 20),
            ),
            title: Text(
              _wordData[i].asPascalCase,
              style: const TextStyle(fontSize: 20),
            ),
          );
        });
  }

  void _loadDataMore() {
    _isLoading = true;
    _datafetcher.fecth().then((List<WordPair> fetchedListData) {
      if (fetchedListData.isEmpty) {
        setState(() {
          _isLoading = false;
          _isMoreData = false;
        });
      } else {
        setState(() {
          _isLoading = false;
          _wordData.addAll(fetchedListData);
        });
      }
    });
  }
}
