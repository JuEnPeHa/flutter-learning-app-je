import 'dart:ui';

import 'package:flutter/material.dart';

Color colorCubes(int index) {
  return Colors.primaries[index % Colors.primaries.length];
}

// Color _scaleAlpha(Color a, double factor) {
//   return a.withAlpha((a.alpha * factor).round().clamp(0, 255));
// }
//
// Color? colorLerp(Color? a, Color  t);
//     }
//   } else {
//     if (a == null) {
//       return _scaleAlpha(b, t);
//     } else {
//       return Color.fromARGB(a, r, g, b)
//     }
//   }
// }

const _cardColor = Color(0xff5f40fb);
const _maxHeight = 350.0;
const _minHeight = 70.0;

class MainExpandableNavBarState extends StatefulWidget {
  const MainExpandableNavBarState({Key? key}) : super(key: key);

  @override
  _MainExpandableNavBarStateState createState() =>
      _MainExpandableNavBarStateState();
}

class _MainExpandableNavBarStateState extends State<MainExpandableNavBarState>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _expanded = false;
  double _currentHeight = _minHeight;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      //reverseDuration: Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final menuWidth = size.width * 0.5;
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorCubes(index),
              ),
            ),
          );
        },
      ),
      extendBody: true,
      bottomNavigationBar: GestureDetector(
        onVerticalDragUpdate: _expanded
            ? (details) {
                final newHeight = _currentHeight - details.delta.dy;
                _controller.value = _currentHeight / _maxHeight;
                _currentHeight = newHeight.clamp(_minHeight, _maxHeight);
                print(_expanded);
              }
            : null,
        onVerticalDragEnd: _expanded
            ? (details) {
                if (_currentHeight < _maxHeight * 0.5) {
                  _controller.reverse();
                  _expanded = false;
                  print(_expanded);
                } else {
                  _expanded = true;
                  _controller.forward(from: _currentHeight / _maxHeight);
                  _currentHeight = _maxHeight;
                  print(_expanded);
                }
              }
            : null,
        child: AnimatedBuilder(
            animation: _controller,
            builder: (context, snapshot) {
              final value =
                  const ElasticInCurve(100.0).transform(_controller.value);
              return Stack(
                children: [
                  Positioned(
                    height: lerpDouble(_minHeight, _currentHeight,
                        value) /*_expanded ? _maxHeight : _minHeight*/,
                    left: /*_expanded ? 0.0 : size.width / 2 - menuWidth / 2*/ lerpDouble(
                        size.width / 2 - menuWidth / 2, 0.0, value),
                    width: /*_expanded ? size.width : menuWidth*/ lerpDouble(
                        menuWidth, size.width, value),
                    bottom: /*_expanded ? 0.0 : 40.0*/ lerpDouble(
                        40.0, 0.0, value),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.lerp(Colors.red, _cardColor, value),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                          bottom: Radius.circular(
                              lerpDouble(20.0, 0.0, value)!.toDouble()),
                        ),
                      ),
                      child: _expanded
                          ? Opacity(
                              opacity: value, child: _buildExpandedContent())
                          : _buildMenuContent(),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }

  Widget _buildExpandedContent() {
    print("Expanded");
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Last Century",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "2 ejemplo",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.shuffle),
                Icon(Icons.pause),
                Icon(Icons.playlist_add)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenuContent() {
    print("no expanded");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.calendar_today_sharp),
        GestureDetector(
          onTap: () {
            setState(() {
              _expanded = true;
              _currentHeight = _maxHeight;
              _controller.forward(from: 0.0);
            });
          },
          child: Icon(Icons.calendar_today),
        ),
        Icon(Icons.calendar_today_sharp),
      ],
    );
  }
}
