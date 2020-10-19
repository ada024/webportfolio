import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webportfolio/presentation/core/utils/url_handler.dart';

class IconBtn extends StatefulWidget {
  const IconBtn({Key key, this.url, this.iconData}) : super(key: key);

  final String url;
  final IconData iconData;

  @override
  IconBtnState createState() => IconBtnState();
}

class IconBtnState extends State<IconBtn> {
  bool _onHover = false;

  void _onTap() {
    launchURL(widget.url);
  }

  void _onPointerEnter(PointerEnterEvent event) {
    setState(() {
      _onHover = true;
    });
  }

  void _onPointerExit(PointerExitEvent event) {
    setState(() {
      _onHover = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onPointerEnter,
      onExit: _onPointerExit,
      child: GestureDetector(
        onTap: _onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            widget.iconData,
            color: _onHover ? Theme.of(context).accentColor : null,
            size: 32,
          ),
        ),
      ),
    );
  }
}