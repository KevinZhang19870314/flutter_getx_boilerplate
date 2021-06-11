import 'package:flutter/material.dart';

class InboxTab extends StatefulWidget {
  @override
  _InboxTabState createState() => new _InboxTabState();
}

class _InboxTabState extends State<InboxTab> {
  final ScrollController _controller = ScrollController();
  FocusNode _focus = new FocusNode();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    print('_onFocusChange');
    _scrollToEnd();
  }

  void _scrollToEnd() async {
    if (!_controller.hasClients) {
      return;
    }

    var scrollPosition = _controller.position;

    await Future.delayed(Duration(milliseconds: 400));
    if (scrollPosition.maxScrollExtent > scrollPosition.minScrollExtent) {
      print('_onFocusChange=========${scrollPosition.maxScrollExtent}');
      _controller.animateTo(
        scrollPosition.maxScrollExtent,
        duration: new Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    }
  }
  // void _scrollToEnd() {
  //   _controller.jumpTo(_controller.position.maxScrollExtent);
  // }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance!.addPostFrameCallback((_) => _scrollToEnd());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            controller: _controller,
            child: Container(
              child: _buildList(),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(10.0),
          child: TextField(
            focusNode: _focus,
            decoration: InputDecoration(
              hintText: 'Chat message',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildList() {
    return Column(
      children: [
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("Filled"),
        new Text("AAAAAAAAAAAAAAAAAAAAAAAA"),
      ],
    );
  }
}
