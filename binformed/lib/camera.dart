import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController cameraController;
  late Future<void> ControllerFuture;

  @override
  void initState() {
    super.initState();
    try {
      cameraController = CameraController(widget.camera, ResolutionPreset.high,
          enableAudio: false,);
      ControllerFuture = cameraController.initialize();
    } catch (e) {
      print('Failed to initialize camera: $e');
    }
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  void capturePhoto() async {
    if (cameraController != null && cameraController.value.isInitialized) {
      final image = await cameraController.takePicture();
      final imagePath = image.path;
      // implement scaning the photo here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: cameraController.initialize(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(cameraController);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.camera),
      onPressed: capturePhoto,
      ),
    );
  }
}
