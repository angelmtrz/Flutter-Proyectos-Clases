import 'package:flutter/material.dart';

class GestureDetector04 extends StatefulWidget {
  const GestureDetector04({super.key});

  @override
  State<GestureDetector04> createState() => _GestureDetector04State();
}

class _GestureDetector04State extends State<GestureDetector04>
    with SingleTickerProviderStateMixin {
  late TransformationController controller;
  late AnimationController animationController;
  Animation<Matrix4>? animation;
  final double minScale = 1;
  final double maxScale = 4;

  @override
  void initState() {
    super.initState();
    controller = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() => controller.value = animation!.value);
  }

  @override
  void dispose() {
    controller.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text('Gesture Detector 04'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: InteractiveViewer(
            transformationController: controller,
            clipBehavior: Clip.none,
            panEnabled: false,
            minScale: minScale,
            maxScale: maxScale,
            onInteractionEnd: (details) {
              resetAnimation();
            },
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1525382455947-f319bc05fb35',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void resetAnimation() {
    animation = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity(),
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceInOut,
    ));
    animationController.forward(from: 0.0);
  }
}
