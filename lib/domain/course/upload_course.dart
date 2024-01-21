import 'package:video_compress/video_compress.dart';

class UploadCourse {
  _compressVideo(String videoPath) async {
    final compressedVideo = await VideoCompress.compressVideo(
      videoPath,
      quality: VideoQuality.MediumQuality,
    );
    // Return the compressed video
    return compressedVideo!.file;
  }
}
