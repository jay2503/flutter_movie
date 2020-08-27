class Movie {
  final int id;
  final String title;
  final String image;
  final String backdrop;
  final double stars;
  final String about;
  final List<String> genres;
  final List<Crew> crews;

  Movie(
      {this.id,
      this.title,
      this.image,
      this.stars,
      this.backdrop,
      this.about,
      this.genres,
      this.crews});
}

class Crew {
  final String name;
  final String image;

  Crew(this.name, this.image);
}

Crew kAmitabh = Crew("Amitabh Bachchan", "assets/images/crews/amitabh.jpg");
Crew kAbhishek = Crew("Abishek Bachchan", "assets/images/crews/abhishek.jpg");
Crew kAmrita = Crew("Amrita Singh", "assets/images/crews/amrita.jpg");
Crew kAntonio = Crew("Antonio", "assets/images/crews/antonio.jpg");
Crew kKatrina = Crew("Katrina Kaif", "assets/images/crews/katrina.jpg");
Crew kKaykay = Crew("Kay Kay", "assets/images/crews/kaykay.jpg");
Crew kNeetu = Crew("Neetu", "assets/images/crews/neetu.jpg");
Crew kNirupa = Crew("Nirupa Roy", "assets/images/crews/nirupa.jpg");
Crew kRishi = Crew("Rishi Kapoor", "assets/images/crews/rishi.jpg");
Crew kSashi = Crew("Sashi Kapoor", "assets/images/crews/sashi.jpg");
Crew kTaapsee = Crew("Taapsee Panu", "assets/images/crews/taapsee.jpg");
Crew kTony = Crew("Tony", "assets/images/crews/tony.jpg");
Crew kDharmendra = Crew("Dharmendra", "assets/images/crews/dharmendra.jpg");
Crew kHema = Crew("Hema Malini", "assets/images/crews/hema.jpg");
Crew kJaya = Crew("Jaya Bachchan", "assets/images/crews/jaya.jpg");

List<Movie> kMovies = [
  Movie(
      id: 1,
      title: "Deewar",
      crews: [kAmitabh, kSashi],
      image: "assets/images/movie1.jpg",
      backdrop: "assets/images/backdrop/movie1.jpg",
      stars: 8.2,
      genres: ["Action", "Emotional", "Drama"],
      about:
          "Deewaar (lit. 'The Wall') is a 1975 Indian action[4][5][6] crime drama film[7][8][9] written by Salim-Javed (Salim Khan and Javed Akhtar), directed by Yash Chopra, and starring Amitabh Bachchan, Shashi Kapoor, Nirupa Roy, Neetu Singh and Parveen Babi. Deewaar tells the story of a pair of impoverished brothers who, after their family is betrayed by the misplaced idealism of their father, struggle to survive in the slums of Bombay, and eventually find themselves on opposing sides of the law.[10][11][12] The Deewaar ('wall') of the title is the wall that has sprung up between the two brothers, drawn apart by fate and circumstances in a time of socio-political turmoil. Bachchan's character Vijay was loosely inspired by the real-life Bombay underworld gangster Haji Mastan.[13][14]"),
  Movie(
      id: 2,
      title: "Sarkar",
      crews: [kAmitabh, kAbhishek, kKatrina, kKaykay],
      image: "assets/images/movie4.jpg",
      backdrop: "assets/images/backdrop/movie4.jpg",
      stars: 7.2,
      genres: ["Action", "Drama", "Politics"],
      about:
          "Sarkar (transl. Government) is a 2005 Indian Hindi-language political crime thriller film directed by Ram Gopal Varma. It is based on 1972's The Godfather. The film stars Amitabh Bachchan in the title role alongside Abhishek Bachchan as his younger son, along with Kay Kay Menon, Katrina Kaif, Kota Srinivasa Rao, Anupam Kher, Supriya Pathak and Tanisha Mukherjee.[3] It is the first installment of Sarkar film series."),
  Movie(
      id: 3,
      title: "Jhund",
      crews: [kAmitabh],
      image: "assets/images/movie2.jpeg",
      backdrop: "assets/images/backdrop/movie2.jpeg",
      stars: 9.2,
      genres: ["Drama", "Thriller"],
      about:
          "Jhund (transl. Crowd) is an upcoming Indian Hindi-language sports film based on the life of Vijay Barse, the founder of NGO Slum Soccer. The film starring Amitabh Bachchan, Akash Thosar and Rinku Rajguru is directed by Nagraj Manjule.[2] The biographical sports-drama is produced by Bhushan Kumar, Krishan Kumar, Raaj Hiremath, Savita Hiremath and Nagraj Manjule, Gargee Kulkarni and Meenu Arora under the banner of T-Series, Tandav Films Entertainment Pvt.Ltd and Aatpat Films. In the film Bachchan plays a professor who motivates the street children to form a football team. The filming began in December 2018 at Nagpur.[3]"),
  Movie(
      id: 4,
      title: "Badla",
      crews: [kAmitabh, kAmrita],
      image: "assets/images/movie3.jpg",
      backdrop: "assets/images/backdrop/movie3.jpg",
      genres: ["Drama", "Thriller", "Action"],
      stars: 6.5,
      about:
          "Badla (transl. Crowd) is an upcoming Indian Hindi-language sports film based on the life of Vijay Barse, the founder of NGO Slum Soccer. The film starring Amitabh Bachchan, Akash Thosar and Rinku Rajguru is directed by Nagraj Manjule.[2] The biographical sports-drama is produced by Bhushan Kumar, Krishan Kumar, Raaj Hiremath, Savita Hiremath and Nagraj Manjule, Gargee Kulkarni and Meenu Arora under the banner of T-Series, Tandav Films Entertainment Pvt.Ltd and Aatpat Films. In the film Bachchan plays a professor who motivates the street children to form a football team. The filming began in December 2018 at Nagpur.[3]"),
  Movie(
      id: 5,
      title: "102 Not Out",
      crews: [kAmitabh, kRishi],
      image: "assets/images/movie5.jpg",
      backdrop: "assets/images/backdrop/movie5.jpg",
      genres: ["Comedy", "Emotional"],
      stars: 9.2,
      about:
          "102 Not Out is a 2018 Indian Hindi-language comedy-drama film directed by Umesh Shukla and starring Amitabh Bachchan and Rishi Kapoor in the lead roles.[6][7] The film is based on the eponymous Gujarati play written by Saumya Joshi.[8] 102 Not Out was released on 4 May 2018.[9]"),
  Movie(
      id: 6,
      title: "Sholay",
      crews: [kAmitabh, kDharmendra, kHema, kJaya],
      image: "assets/images/movie5.jpg",
      backdrop: "assets/images/backdrop/movie5.jpg",
      genres: ["Action", "Drama", "Emotional"],
      stars: 10.0,
      about:
          "Sholay (Hindustani: [ˈʃoːleː] (About this soundlisten), transl. Embers) is a 1975 Indian action-adventure film written by Salim-Javed, directed by Ramesh Sippy, and produced by his father G. P. Sippy. The film is about two criminals, Veeru and Jai (played by Dharmendra and Amitabh Bachchan respectively), hired by a retired police officer (Sanjeev Kumar) to capture the ruthless dacoit Gabbar Singh (Amjad Khan). Hema Malini and Jaya Bhaduri also star, as Veeru and Jai's love interests, Basanti and Radha, respectively. Sholay is considered a classic and one of the best Indian films. It was ranked first in the British Film Institute's 2002 poll of 'Top 10 Indian Films' of all time. In 2005, the judges of the 50th Filmfare Awards named it the Best Film of 50 Years."),
];
