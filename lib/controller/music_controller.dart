import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class MusicProvider with ChangeNotifier {
  List<String> _musicTracks = [
    'assets/music/1.mp3',
    'assets/music/2.mp3',
    'assets/music/3.mp3',
    'assets/music/4.mp3', // Replace with your actual audio file paths
  ];
  int _currentTrackIndex = 0;
  AudioPlayer _audioPlayer;

  MusicProvider() : _audioPlayer = AudioPlayer() {
    _audioPlayer = AudioPlayer();
  }

  void playNextTrack() async {
    await _audioPlayer.setAsset(_musicTracks[_currentTrackIndex]);
    _audioPlayer.play();
    _currentTrackIndex = (_currentTrackIndex + 1) % _musicTracks.length;
    notifyListeners();
  }

  void dispose() {
    _audioPlayer.dispose(); // Dispose of audio player to release resources
    super.dispose();
  }
}
