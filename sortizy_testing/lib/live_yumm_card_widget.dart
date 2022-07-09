import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:sortizy_testing/image_utils.dart';
import 'package:sortizy_testing/yumms.dart';

class LiveYummCardWidget extends StatefulWidget {
  final Yumms yumm;

  const LiveYummCardWidget({Key? key, required this.yumm}) : super(key: key);

  @override
  State<LiveYummCardWidget> createState() => _LiveYummCardWidgetState();
}

class _LiveYummCardWidgetState extends State<LiveYummCardWidget> {
  BetterPlayerController? _videoController;

  @override
  void initState() {
    super.initState();
    _videoController = initPlayerController(widget.yumm.videoUrl ?? "");
  }

  BetterPlayerController initPlayerController(String videoUrl) {
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      Uri.encodeFull(videoUrl),
      bufferingConfiguration: const BetterPlayerBufferingConfiguration(
        maxBufferMs: 10000,
        minBufferMs: 3000,
        bufferForPlaybackMs: 2000,
        bufferForPlaybackAfterRebufferMs: 3000,
      ),
    );

    BetterPlayerController playerController = BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: true,
        fit: BoxFit.fitWidth,
        looping: true,
        aspectRatio: 0.7,
        errorBuilder: (_, __) => ImageUtils.getImage(
          widget.yumm.thumbnailUrl,
          fit: BoxFit.cover,
        ),
        placeholder: ImageUtils.getImage(
          widget.yumm.thumbnailUrl,
          fit: BoxFit.cover,
        ),
        controlsConfiguration: BetterPlayerControlsConfiguration(
          playerTheme: BetterPlayerTheme.custom,
          customControlsBuilder: (controller, _) =>
              PlayerUIWidget(yumm: widget.yumm),
        ),
        playerVisibilityChangedBehavior: (value) => _onVisibilityChanged(value),
      ),
      betterPlayerDataSource: betterPlayerDataSource,
    );
    playerController.setControlsEnabled(false);
    playerController.setVolume(0);

    return playerController;
  }

  _onVisibilityChanged(double visibleFraction) async {
    if (_videoController == null) return;

    bool? isPlaying = _videoController!.isPlaying() ?? false;
    bool? initialized = _videoController!.isVideoInitialized() ?? false;
    if (visibleFraction >= 0.2) {
      if (initialized && !isPlaying) {
        _videoController!.play();
      }
    } else {
      if (initialized && isPlaying) {
        _videoController!.pause();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final videoPlayer = BetterPlayerMultipleGestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: AspectRatio(
            aspectRatio: 0.7,
            child: BetterPlayer(controller: _videoController!),
          ),
        ),
      ),
    );

    return videoPlayer;
  }
}

class PlayerUIWidget extends StatelessWidget {
  final Yumms yumm;

  const PlayerUIWidget({
    Key? key,
    required this.yumm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const SizedBox(
        height: 150,
        width: 150,
        child: Text(""),
      ),
    );
  }
}
