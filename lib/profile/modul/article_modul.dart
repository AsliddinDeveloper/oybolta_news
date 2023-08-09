import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String imageUrl;
  final String fullName;
  final String username;
  final String biotext;
  final String myurl;
  final String stories;
  final String obunachilar;
  final String following;

  Article({
    required this.id,
    required this.imageUrl,
    required this.fullName,
    required this.username,
    required this.biotext,
    required this.myurl,
    required this.stories,
    required this.obunachilar,
    required this.following,
  });

  static List<Article> articles = [
    Article(
      id: 'u1',
      imageUrl:
          "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      fullName: 'Avazov Asliddin',
      username: '@Asliddin',
      biotext:
          'Qulay vaqtni kutmang, u hech qachon kelmaydi. \n Ulkan orzularingni tor fikirlovchi insonlarga aytma..! \n Dam olib utirishga vaqt yo\'q',
      myurl: 'myurls.co/boybobouz',
      stories: '347',
      obunachilar: '12 674 112M',
      following: '472',
    ), 
    Article(
      id: 'u2',
      imageUrl:
          'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      fullName: 'Edgard Toms',
      username: '@TomsEnd',
      biotext: '.............',
      myurl: 'myurls.co/edgardTom',
      stories: '847',
      obunachilar: '7 642 110M',
      following: '342',
    ),
    Article(
      id: 'u3',
      imageUrl:
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVvcGxlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
      fullName: 'Hamrayeva Nilufar',
      username: '@Nilufar',
      biotext: 'Nilufar',
      myurl: 'myurls.co/nilufar',
      stories: '67',
      obunachilar: '895 412K',
      following: '380',
    ),
    Article(
      id: 'u4',
      imageUrl:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      fullName: 'Milliarder ^ Boybobo',
      username: 'Boybobo',
      biotext:
          'Tavakkal qilib yutkazish mumkin. Lekin tavakkal qilmay umuman yuta olmaysan.',
      myurl: 'myurls.co/boybobo',
      stories: '710',
      obunachilar: '6 758 991M',
      following: '210',
    ),
    Article(
        id: 'u5',
        imageUrl:
            "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        fullName: 'Kristina Bernard',
        username: '@KristinaBr',
        biotext:
            'Inson ajoyib mavjudot, uni aldashgunga, oyoq osti qilushgunga qadar.',
        myurl: 'myurls.co/kristinabr',
        stories: '983',
        obunachilar: '4 621 003M',
        following: '846'),
    Article(
        id: 'u6',
        imageUrl:
            "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        fullName: 'Almardonova Madina ',
        username: '@Madina',
        biotext:
            'Hayotingizga biror bir narsani jalb qilish uchun, u allaqacon mavjudligini tassavvur qiling.',
        myurl: 'myurl.co/madina',
        stories: '98',
        obunachilar: '745K',
        following: '184'),
    Article(
        id: 'u6',
        imageUrl:
            "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        fullName: 'Edgard Tonbol',
        username: '@Tonboled',
        biotext:
            'O\'zingni dadil tut! Sen aytmaguncha hech kim senda nima borligini so\'ramaydi.',
        myurl: 'myurl.co/tonbol',
        stories: '798',
        obunachilar: '1 425 623 M',
        following: '151'),
    // Article(
    //     id: 'u7',
    //     imageUrl:
    //         "https://images.unsplash.com/photo-1537511446984-935f663eb1f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
    //     fullName: 'Cinton Madiv',
    //     username: '@CintonM',
    //     biotext:
    //         'Birgina inson butun hayotingni, taqdiringni o\'zgartirib yuborishi mumkin. Bu inson o\'zing',
    //     myurl: 'myurl.co/cinton',
    //     stories: '241',
    //     obunachilar: '4 124 144M',
    //     following: '800'),
    Article(
        id: 'u8',
        imageUrl:
            "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
        fullName: 'Tolipova Malika',
        username: '@Malika',
        biotext:
            'O\'z yo\'lingda yaglishish - bowqalar yo\'lida to\'g\'ri ketishdan afzal.',
        myurl: 'myurl.co/malika',
        stories: '811',
        obunachilar: '2 983 190M',
        following: '123'),
  ];

  @override
  List<Object?> get props => [
        id,
        imageUrl,
        fullName,
        username,
        biotext,
        myurl,
        stories,
        obunachilar,
        following,
      ];
}
