import 'package:flutter/material.dart';

class ListTileCustom extends StatelessWidget {
  final Function? function;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final double? width;
  final double? height;
  final Color? color;
  const ListTileCustom(
      {Key? key,
      this.function,
      this.leading,
      this.title,
      this.subtitle,
      this.trailing,
      this.width,
      this.height,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              function!();
            },
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    color: color,
                    width: width,
                    height: height,
                    child: leading,
                  )),
              title: title,
              subtitle: subtitle,
              trailing: trailing,
            ),
          )
        ],
      ),
    );
  }
}
