class NewsArticle {
  final String title;
  final String author;
  final String description;
  final String urlToImage;
  final String url;
  final String publishedAt;
  final String content;

  NewsArticle(
      {this.title,
      this.author,
      this.description,
      this.urlToImage,
      this.url,
      this.publishedAt,
      this.content});

//factory constructor
//e un sistem de triere
//Use a factory in situations where you don't necessarily want to return a new instance of the class itself

// Use cases:
// the constructor is expensive, so you want to return an existing instance - if possible - instead of creating a new one;
// you only ever want to create one instance of a class (the singleton pattern);
// you want to return a subclass instance instead of the class itself.

// A Dart class may have generative constructors or factory constructors. A generative constructor is a function that always returns a new instance of the class. Because of this, it does not utilize the return keyword

// A factory constructor has looser constraints than a generative constructor.
// The factory need only return an instance that is the same type as the class
// or that implements its methods (ie satisfies its interface).
// This could be a new instance of the class, but could also be
// an existing instance of the class or a new/existing instance of a subclass
// (which will necessarily have the same methods as the parent).
// A factory can use control flow to determine what object to return,
// and must utilize the return keyword.
// In order for a factory to return a new class instance,
// it must first call a generative constructor.

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      author: json['author'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      url: json['url'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
