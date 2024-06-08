class Book {
  int book_id;
  String title;
  String author;

  
  Book.Details(this.book_id, this.title, this.author);


  void display() {
    print('Book ID: $book_id');
    print('Title: $title');
    print('Author: $author');
  }
}

void main() {
  
  Book bookdetail = Book.Details(1, 'Dart Programming', 'bhavik');
  bookdetail.display();
}
