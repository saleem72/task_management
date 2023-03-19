//

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
    required this.onFinish,
  });
  final Function onFinish;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _titleOffset;
  late Animation<double> _forOffset;
  late Animation<double> _bussinessOffset;
  @override
  void initState() {
    super.initState();
    _initAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..addListener(() {
        if (_controller.status == AnimationStatus.completed) {
          widget.onFinish();
        }
      });

    _titleOffset = Tween<double>(begin: 400, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          0.4,
          curve: Curves.easeInOut,
        ),
      ),
    );

    _forOffset = Tween<double>(begin: 400, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.2,
          0.6,
          curve: Curves.easeInOut,
        ),
      ),
    );

    _bussinessOffset = Tween<double>(begin: 400, end: 0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.4,
          0.8,
          curve: Curves.easeInOut,
        ),
      ),
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            const Center(
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(image: AssetImage('assets/icons/budget.png'))),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 216),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return _allText();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _allText() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        _titleText(),
        const SizedBox(height: 20),
        _forText(),
        const SizedBox(height: 20),
        _bussinessText(),
      ],
    );
  }

  Widget _bussinessText() {
    return Transform.translate(
      offset: Offset(0, _bussinessOffset.value),
      child: const Text(
        "Bussiness",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _forText() {
    return Transform.translate(
      offset: Offset(0, _forOffset.value),
      child: const Text(
        "For",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _titleText() {
    return Transform.translate(
      offset: Offset(0, _titleOffset.value),
      child: const Text(
        "Epsilon",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
