import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  final bool isImage;

  LoadingWidget({this.isImage = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    if (isImage) {
      return SpinKitFadingCircle(
        color: Theme.of(context).accentColor,
      );
    } else {
      return SpinKitRing(
        color: Theme.of(context).accentColor,
      );
    }
  }
}
