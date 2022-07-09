class Yumms {
  String? videoUrl;
  String? thumbnailUrl;

  Yumms(
    this.videoUrl,
    this.thumbnailUrl,
  );

  Yumms.fromJson(Map<String, dynamic> json) {
    videoUrl = json['video_url']?.toString();
    thumbnailUrl = json['thumbnail_url']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['video_url'] = videoUrl;
    data['thumbnail_url'] = thumbnailUrl;
    return data;
  }
}

final yummsList = <Yumms>[
  Yumms(
    "https://d1qjo0292tebag.cloudfront.net/yumms-new/13229/roasted_soya_chunks/1656935409183/HLS/1656935409183.m3u8",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/13229/roasted_soya_chunks/1656935443249-converted600.jpg",
  ),
  Yumms(
    "https://d1qjo0292tebag.cloudfront.net/yumms-new/6690/____chaukari_dal_takatak/1655984055962/HLS/1655984055962.m3u8",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/6690/____chaukari_dal_takatak/1655984130688-converted600.jpg",
  ),
  Yumms(
    "https://d2apye5twtxh99.cloudfront.net/yumms-new/147/jowar_semiya_kichadi_recipesemiya_kichadi/1657340657675-360p.mp4",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/147/jowar_semiya_kichadi_recipesemiya_kichadi/1657340791956.jpg",
  ),
  Yumms(
    "https://d2apye5twtxh99.cloudfront.net/yumms-new/226/quick_tiffinbox_idea__masala_rice/1657263810166-360p.mov",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/226/quick_tiffinbox_idea__masala_rice/1657263821169.jpg",
  ),
  Yumms(
    "https://d2apye5twtxh99.cloudfront.net/yumms-new/6690/millet_bowl_healthy_sorbet_drink/1657210181563-360p.mp4",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/6690/millet_bowl_healthy_sorbet_drink/1657210218280.jpg",
  ),
  Yumms(
    "https://d1qjo0292tebag.cloudfront.net/yumms-new/13229/roasted_soya_chunks/1656935409183/HLS/1656935409183.m3u8",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/13229/roasted_soya_chunks/1656935443249-converted600.jpg",
  ),
  Yumms(
    "https://d1qjo0292tebag.cloudfront.net/yumms-new/6690/____chaukari_dal_takatak/1655984055962/HLS/1655984055962.m3u8",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/6690/____chaukari_dal_takatak/1655984130688-converted600.jpg",
  ),
  Yumms(
    "https://d2apye5twtxh99.cloudfront.net/yumms-new/226/quick_tiffinbox_idea__masala_rice/1657263810166-360p.mov",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/226/quick_tiffinbox_idea__masala_rice/1657263821169.jpg",
  ),
  Yumms(
    "https://d1qjo0292tebag.cloudfront.net/yumms-new/13229/roasted_soya_chunks/1656935409183/HLS/1656935409183.m3u8",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/13229/roasted_soya_chunks/1656935443249-converted600.jpg",
  ),
  Yumms(
    "https://d2apye5twtxh99.cloudfront.net/yumms-new/147/jowar_semiya_kichadi_recipesemiya_kichadi/1657340657675-360p.mp4",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/147/jowar_semiya_kichadi_recipesemiya_kichadi/1657340791956.jpg",
  ),
  Yumms(
    "https://d2apye5twtxh99.cloudfront.net/yumms-new/6690/millet_bowl_healthy_sorbet_drink/1657210181563-360p.mp4",
    "https://d2apye5twtxh99.cloudfront.net/yumms-thumbnail-new/6690/millet_bowl_healthy_sorbet_drink/1657210218280.jpg",
  ),
];
