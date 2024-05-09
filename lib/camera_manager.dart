import 'package:camera/camera.dart';

class CameraManager {
  CameraController? _controller;

  Future<void> initialize() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.high);
    await _controller!.initialize();
  }

  CameraController? get controller => _controller;

  void dispose() {
    _controller?.dispose();
  }
}