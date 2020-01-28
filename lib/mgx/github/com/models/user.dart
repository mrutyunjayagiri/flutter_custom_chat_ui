class User {
  String username;
  int userId;

  String userMobile;
  String profileImage;
  User({this.username, this.userId, this.userMobile, this.profileImage});
}

final currentUser = User(
    username: "Me",
    userMobile: '1119853265',
    userId: 9,
    profileImage:
        "https://cdn.pixabay.com/photo/2020/01/27/10/28/appetite-4796886__340.jpg");

final userList = <User>[
  User(
      profileImage:
          "https://cdn.pixabay.com/photo/2020/01/27/19/04/macbook-4798095__340.jpg",
      userId: 1,
      userMobile: '9876541230',
      username: 'Macron'),
  User(
      profileImage:
          "https://cdn.pixabay.com/photo/2020/01/28/07/17/lamp-4799089__340.jpg",
      userId: 2,
      userMobile: '1234567890',
      username: 'Lita'),
  User(
      profileImage:
          "https://cdn.pixabay.com/photo/2015/07/27/20/16/book-863418_960_720.jpg",
      userId: 4,
      userMobile: '8965236985',
      username: 'Sareen'),
  User(
      profileImage:
          "https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083383__340.jpg",
      userId: 5,
      userMobile: '6669855478',
      username: 'Worsee'),
  User(
      profileImage:
          "https://cdn.pixabay.com/photo/2017/03/04/12/15/programming-2115930__340.jpg",
      userId: 6,
      userMobile: '9988998562',
      username: 'Provert'),
  User(
      profileImage:
          "https://cdn.pixabay.com/photo/2015/07/10/17/24/hipster-839803__340.jpg",
      userId: 7,
      userMobile: '5544236999',
      username: 'Hipster'),
];
