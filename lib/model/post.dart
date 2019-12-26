class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
      title: "第1条数据",
      author: "3A总部",
      imageUrl:
          "https://v3.3asxy.com/attachment/images/2/2019/12/f2J0rBbBb18eEKGkoHIAHZHN6RH16H.jpg"),
  Post(
      title: "第2条数据",
      author: "3A总部",
      imageUrl:
          "https://v3.3asxy.com/attachment/images/2/2019/12/lux4p4447wxPByBxYOY4gd5bFO0xIG.jpg"),
  Post(
      title: "第3条数据",
      author: "3A总部",
      imageUrl:
          "https://v3.3asxy.com/attachment/images/2/2019/12/W9M3zD2DMWHPTfEZUZm3wm3ZEUTmQu.png"),
  Post(
      title: "第4条数据",
      author: "3A总部",
      imageUrl:
          "https://v3.3asxy.com/attachment/images/2/2019/12/vvyfdsv1rARb1FAlV1OR6rbodESYZ4.png")
];
