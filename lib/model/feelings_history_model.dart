class FeelingsHistoryModel {
  FeelingsHistoryModel({
    required this.status,
    required this.data,
  });
  late final String status;
  late final Data data;

  FeelingsHistoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson(FeelingsHistoryModel? model) {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.feelingPercentage,
    required this.feelingList,
    required this.videoArr,
  });
  late final FeelingPercentage feelingPercentage;
  late final List<FeelingList> feelingList;
  late final List<VideoArr> videoArr;

  Data.fromJson(Map<String, dynamic> json) {
    feelingPercentage = FeelingPercentage.fromJson(json['feeling_percentage']);
    feelingList = List.from(json['feeling_list'])
        .map((e) => FeelingList.fromJson(e))
        .toList();
    videoArr =
        List.from(json['video_arr']).map((e) => VideoArr.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['feeling_percentage'] = feelingPercentage.toJson();
    _data['feeling_list'] = feelingList.map((e) => e.toJson()).toList();
    _data['video_arr'] = videoArr.map((e) => e.toJson()).toList();
    return _data;
  }
}

class FeelingPercentage {
  FeelingPercentage({
    required this.Happy,
    required this.Sad,
    required this.Energetic,
    required this.Calm,
    required this.Angry,
    required this.Bored,
  });
  late final String Happy;
  late final String Sad;
  late final String Energetic;
  late final String Calm;
  late final String Angry;
  late final String Bored;

  FeelingPercentage.fromJson(Map<String, dynamic> json) {
    Happy = json['Happy'];
    Sad = json['Sad'];
    Energetic = json['Energetic'];
    Calm = json['Calm'];
    Angry = json['Angry'];
    Bored = json['Bored'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Happy'] = Happy;
    _data['Sad'] = Sad;
    _data['Energetic'] = Energetic;
    _data['Calm'] = Calm;
    _data['Angry'] = Angry;
    _data['Bored'] = Bored;
    return _data;
  }
}

class FeelingList {
  FeelingList({
    required this.userFeelingId,
    required this.feelingId,
    required this.feelingName,
    required this.submitTime,
  });
  late final String userFeelingId;
  late final String feelingId;
  late final String feelingName;
  late final String submitTime;

  FeelingList.fromJson(Map<String, dynamic> json) {
    userFeelingId = json['user_feeling_id'];
    feelingId = json['feeling_id'];
    feelingName = json['feeling_name'];
    submitTime = json['submit_time'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_feeling_id'] = userFeelingId;
    _data['feeling_id'] = feelingId;
    _data['feeling_name'] = feelingName;
    _data['submit_time'] = submitTime;
    return _data;
  }
}

class VideoArr {
  VideoArr({
    required this.title,
    required this.description,
    required this.youtubeUrl,
  });
  late final String title;
  late final String description;
  late final String youtubeUrl;

  VideoArr.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    youtubeUrl = json['youtube_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['description'] = description;
    _data['youtube_url'] = youtubeUrl;
    return _data;
  }
}
