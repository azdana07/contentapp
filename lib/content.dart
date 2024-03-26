class Content {
  final String label;
  final String imageUrl;
  final DateTime date; // Changed from int servings to DateTime date
  final Synopsis synopsis; // Changed from List<Ingredient> to a single Synopsis

  Content(this.label, this.imageUrl, this.date, this.synopsis);

  static final List<Content> samples = [
    Content(
      'Going Seventeen',
      'https://pbs.twimg.com/media/F2IQEQEaoAIXMwW.jpg:large',
      DateTime(2024, 3, 27), // Example date
      Synopsis('Going Seventeen (Hangul: 고잉 세븐틴; RR: Going Seventeen, juga dikenal sebagai GoSe) adalah serial web variety Korea Selatan yang dibintangi oleh boy band Seventeen. Serial ini telah ditawarkan untuk ditonton secara gratis di YouTube dan V Live (kemudian di Weverse) sejak penayangan perdananya pada 12 Juni 2017.'),
    ),
    Content(
      'Nana Tour',
      'https://pbs.twimg.com/media/GFosOdlaEAAl1eU.jpg:large',
      DateTime(2024, 2, 16), // Example date
      Synopsis('NANA TOUR With SEVENTEEN akan menampilkan keseruan perjalanan PD Na atau Na Young Seok bersama SEVENTEEN di Italia. Dalam teaser yang diunggah baru-baru ini, para member terlihat menjelajah Negara Pizza tersebut sembari bermain gim..'),
    ),
     Content(
      'One Fine Day',
      'https://0.soompi.io/wp-content/uploads/2017/03/29230343/seventeen-one-fine-day-japan.jpg?s=900x600&e=t',
      DateTime(2024, 2, 15), // Example date
      Synopsis('"One Fine Day" dengan SEVENTEEN adalah acara realitas yang mengikuti anggota boy band Korea Selatan, SEVENTEEN, saat mereka pergi berlibur dari jadwal sibuk mereka. Mereka menghadapi berbagai tantangan dan misi lucu selama liburan, memperlihatkan dinamika kelompok, kepribadian individu, dan kebersamaan mereka. Acara ini penuh dengan momen keakraban, tawa, dan petualangan.'),
    ),// Add more Content instances as needed
  ];
}

class Synopsis {
  final String description;

  Synopsis(this.description);
}
