class NewsItem {
  final int id;
  final String title;
  final String bodyTitle;
  final String imgUrl;
  final String category;
  final String aurthor;
  final String time;

  NewsItem({
    required this.id,
    required this.title,
    required this.bodyTitle,
    required this.imgUrl,
    required this.category,
    required this.aurthor,
    this.time = '46 minut oldin',
  });
}

List<NewsItem> news = [
  NewsItem(
    id: 1,
    title:
        "Parlament quyi va yuqori palatalarining qo/'shma majlisida Markaziy saylov komissiyasi ",
    bodyTitle:
        """9 iyul kuni bo/'lib o/'tgan muddatidan ilgari saylovda O/'zbekiston prezidenti etib qayta saylangan Shavkat Mirziyoyev Oliy Majlis palatalarining juma kuni bo/'lib o/'tgan qo/'shma majlisida qasamyod qabul qilib, 
    davlat rahbari lavozimiga kirishdi/n Inauguratsiya Senat binosida bo/'lib o/'tdi. Marosim boshlanishidan avval Senat majlislar zaliga shtandart (bayroq) va prezident belgisi olib kirildi.
Parlament quyi va yuqori palatalarining qo/'shma majlisida Markaziy saylov komissiyasi raisi Zayniddin Nizomxo/'jayev Shavkat Mirziyoyevga prezident guvohnomasini topshirdi.  /n So'ng Shavkat Mirziyoyev qasamyod qildi. Prezident quyidagi so'zlarni aytdi:
«Menga yuksak ishonch bildirib, O'zbekiston Respublikasi Prezidenti etib saylagan barcha yurtdoshlarimga yana bir bor chin qalbimdan samimiy minnatdorchilik bildiraman.
Muqaddas Vatanimiz timsoli va mustaqilligimiz ramzi bo'lgan O'zbekiston Respublikasi davlat bayrog'iga, madhiyamiz va gerbimizga, menga topshirilgan Prezidentlik Oliy nishoni va bayrog'iga yuksak hurmat bajo keltiraman.
O'zbekiston Respublikasi Prezidenti lavozimiga saylanishimni men inson huquq va erkinliklarini, xalq manfaatini ta'minlashga qaratilgan siyosatimizning yana bir yuksak e'tirofi sifatida qabul qilaman».""",
    imgUrl:
        "https://media.istockphoto.com/id/1034587098/photo/tashkent-tv-tower-aerial-shot-during-sunset-in-uzbekistan.webp?b=1&s=170667a&w=0&k=20&c=5Wz2Y0nt0skfLM92v4-a6DoJINK7aK17h9ErCBkmJWc=",
    category: 'Siyosat',
    aurthor: 'Oybolta',
  ),
  NewsItem(
    id: 2,
    title:
        "Hyundai o'zining eng kuchli elektrokrossoveri Hyundai Ioniq 5 N'ni taqdim etdi. ",
    bodyTitle: """Hyundai Ioniq 5 N:/n
Hyundai o'zining eng kuchli elektrokrossoveri Hyundai Ioniq 5 N'ni taqdim etdi. Avtomobil ikkita elektromotor bilan jihozlangan. 
Ular birgalikda 600 ot kuchini beradi. N Grin Boost rejimida esa ot kuchi 641 taga yetadi. 100 km tezlikka chiqishi uchun 3,5 soniya kifoya 
(N Grin Boost rejimida bu ko'rsatkich 3,4 soniya). Krossover 18 daqiqada batareya zaryadini 10 foizdan 80 foizgacha to'ldirish imkonini beruvchi, tez zaryadlash funksiyasiga ega 84 kVt/soat quvvatli akkumulyator bilan jihozlangan.  /n Hyundai Ioniq 5 N'ning narxi 60 ming dollardan boshlanishi kutilmoqda.""",
    imgUrl:
        "https://images.unsplash.com/photo-1630955684223-cf62d82d2954?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHl1bmRhaSUyMGlvbmlxNXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60",
    category: 'Sport',
    aurthor: 'Oybolta',
  ),
  NewsItem(
    id: 3,
    title: 'Eng ommabop ijtimoiy tarmoqlar',
    bodyTitle:
        """ App Economy Insighs tahliliy markazi oylik tashrif buyuruvchilar miqdori bo'yicha 20 ta eng ommabop onlayn platformalar reytingini yangiladi./n 
        Qayd etilishicha, dunyodagi eng ko'p ishlatiladigan ijtimoiy tarmoq hali ham Facebook bo'lib, uning foydalanuvchilari salkam 3 milliardni tashkil qiladi. Undan keyingi o'rinni Google'ning YouTube videoplatformasi 2,69 milliard aktiv foydalanuvchilar bilan egallagan bo'lsa, top uchlik 2,45 milliard foydalanuvchilarga ega WhatsApp bilan yakunlanadi. /n
        Kuchli Top-20 talik quyidagicha: /n

1. Facebook- 2,99 milliard foydalanuvchi;

2. YouTube- 2,69 milliard foydalanuvchi;

3. WhatsApp- 2,45 milliard foydalanuvchi;

4. Instagram- 2,37 milliard foydalanuvchi;

5. TikTok- 1,68 milliard foydalanuvchi;

6. WeChat- 1,67 milliard foydalanuvchi;

7. Reddit- 1,66 milliard foydalanuvchi;

8. Messenger- 930 million foydalanuvchi;

9. Snapchat- 750 million foydalanuvchi;

10. Telegram- 700 million foydalanuvchi;

11. Qzone- 600 million foydalanuvchi;

12. QQ- 600 million foydalanuvchi;

13. Weibo- 590 million foydalanuvchi;

14. Kuaishou- 590 million foydalanuvchi;

15. Pinterest- 460 million foydalanuvchi;

16. LinkedIn- 460 million foydalanuvchi;n

17. Twitter- 330 million foydalanuvchi;n

18. Quora- 300 million foydalanuvchi;n

19. Discord- 200 million foydalanuvchi;n

20. Twitch- 140 million foydalanuvchi.
    """,
    imgUrl:
        'https://images.unsplash.com/photo-1611926653458-09294b3142bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNvY2lhbCUyMG1lZGlhfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
    category: 'Social',
    aurthor: 'CNN',
  ),
  NewsItem(
    id: 4,
    title:
        "Yozda amalga oshib bo'lgan 20 asosiy transfer. Ro'yxatda - uch nafar jahon chempioni",
    bodyTitle:
        """"Yozning birinchi oyi ortda qoldi va allaqachon qator jiddiy transferlar ro'y berdi. Masalan, Lionel Messi va Karim Benzema Yevropadan ketdi, «Real» esa 103 mln yevrolik transferga qo'l urdi. Quyida so'nggi haftalarda ro'y bergan Yevropa futbolidagi asosiy transferlar keltiriladi./n
    Karim Benzema: «Real» → «Al-Ittihod» (erkin agent) /n
    
    Hozirgi «Real»ni Benzemasiz tasavvur qilish qiyin. Fransuz hujumchisi Madridda 14 yil o'ynadi va muxlislar qalbidan joy egalladi. Karimning o'zi Saudiya Arabistoniga ko'chib o'tganidan keyin hamisha musulmon mamlakatda yashashni istagani haqida gapirdi. Uning «Al-Ittihod»dagi taqdimotiga 60 mingdan ortiq muxlis tashrif buyuradi. Albatta, bu transferda pul masalasi ham o'z o'rniga ega edi. Nima bo'lganda ham, Benzema tijorat shartnomalari hisobga olinganda, bir mavsum uchun 100 mln yevro oladi. Bunday taklifga yo'q deyish qiyin edi. O'zining ketishi bilan Benzema anchadan transferlarda faollik ko'rsatmay kelgan «Real»da transfer inqilobini boshlab berdi. /n

    Lionel Messi: «PSJ» → «Inter Mayami» (erkin agent)/n

    O'tgan yilda Messi azaliy orzusiga erishdi — nihoyat jahon chempioniga aylandi. Mavsum yakunida esa shartnomasi muddati yakunlangani munosabati bilan «PSJ»ni tark etdi. Aftidan, Amerika klubi yulduzli futbolchi kelgani munosabati bilan daromadlarini sezilarli darajada oshiradi. Messining yangi jamoasidagi debyuti 21 iyulga belgilangan, bu o'yin chiptalari narxi esa NBA final seriyasi uchun chiptalar narxidan qimmatroq. Bundan tashqari, argentinalik futbolchining kelishi «Inter Mayami»ning ijtimoiy tarmoqlardagi obunachilari sonini keskin ko'paytiradi. Futbolchining o'zi avvaliga boshqa variantlarni ko'rib chiqqanini (uni ham Saudiya Arabistoniga chaqirishgandi), ammo yakunda Shtatlarga o'tishni ma'qul ko'rganini tan oldi.

«Inter Mayami» prezidenti Xorxe Mas transfer tafsilotlarini so'zlab berdi: «Leo shartnoma bo'yicha yiliga 46 mln yevrodan 55 mln yevrogacha oladi.

Bunday darajadagi futbolchi bilan muzokaralar olib borish uchun juda ko'p vaqt sarfladik. Men hamisha uning otasi Xorxe bilan aloqada bo'lib turdim. Devid Bekhem (klub egalaridan biri) professional futbolchi bo'lgani uchun Leo bilan faqat futbol mavzusidagi suhbatlar o'tkazdi. Hech kim Messiga bosim o'tkazishni istamadi, shuning uchun biz u bilan Barselonada ham, Mayamida ham, shuningdek, Rosario va Dohada gaplashdik. Butun jahon chempionati davomida men Argentina milliy jamoasi va Messining o'yinlarini diqqat bilan kuzatib bordim. Apple bilan shartnoma Leo bilan shartnoma tuzishda muhim rol o'ynadi». /n

Jud Bellingem: «Borussiya» Dortmund → «Real» (103 mln yevro) /n

Yozning birinchi oyi uchun rekord darajadagi kelishuv — Bellingem transferi uchun «Real» 100 mln yevrodan ortiq pul sarfladi. Futbolchining o'zi Madrid klubini pul uchun tanlamaganini aytdi. Ushbu transfer poygasidagi asosiy ishtirokchilardan biri «Liverpul» bo'lgandi, ammo, Judning so'zlariga ko'ra, Chempionlar ligasining o'tgan yilgi finali («Real» o'shanda — 1:0 hisobida g'olib bo'lgandi) uning tanlovida ko'p narsani hal qilgan, u endi Yevropaning eng yaxshi klubida ekanini aytdi.

Klublar o'rtasidagi kelishuvda bonuslar ham ko'zda tutilgan — «Borussiya» bu transferdan jami 133,4 mln yevro ishlab olishi mumkin. Shu tariqa, Bellingem tarixdagi eng qimmatbaho angliyalik futbolchiga aylanadi. Transfer uchun katta summa to'lanmoqda, ammo undan umid ham shunga yarasha. Qolaversa, Bellingem Madridda o'z vaqtida Zinedin Zidanga tegishli bo'lgan beshinchi raqamni oldi. /n
/n
#Karim Benzema
#yozgi transferlar
#Lionel Messi
#Jud Bellingem
    """,
    imgUrl:
        "https://images.unsplash.com/photo-1434648957308-5e6a859697e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fGZvb3RiYWxsfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    category: 'World',
    aurthor: 'BBS',
  ),
];
