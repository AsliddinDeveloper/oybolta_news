class ProfileNewsModul {
  final String id;
  final String titleText1;
  final String imageUrl;
  final String cicleImageUrl;
  final String circleUsername;
  final String time;
  final String view;
  final String comment;

  ProfileNewsModul({
    required this.id,
    required this.titleText1,
    required this.imageUrl,
    required this.cicleImageUrl,
    required this.circleUsername,
    required this.time,
    required this.view,
    required this.comment,
  });
}

class ProfileNewsM {
  List<ProfileNewsModul> _prnews = [
    ProfileNewsModul(
        id: 'p1',
        titleText1: 'titleText1',
        imageUrl: 'imageUrl',
        cicleImageUrl: 'cicleImageUrl',
        circleUsername: 'circleUsername',
        time: 'time',
        view: 'view',
        comment: 'comment')
  ];
  List<ProfileNewsModul> get prnews {
    return _prnews;
  }
}
