class Articles {
  final String? image;
  final String text;
  final String? desc;
  final String? url;
  
  
  const Articles(
      {required this.image,
      required this.text,
      required this.desc,
      required this.url});

  factory Articles.fromjson(json) {
    return Articles(
      image: json['urlToImage'],
      text: json['title'],
      desc: json['description'],
      url: json['url'],
    );
  }
}
