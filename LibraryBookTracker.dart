class BookTracker{
  String ? title;
  String? author;
  dynamic publication;
  bool isBorrowed;


  //Single line constructor
  BookTracker(this.title, this.author, this.publication, {this.isBorrowed = false});

  void displayInfo(){
    print("$title\n Written by: $author | Year of Publication: $publication \n Borrowed : ${isBorrowed ? "Yes": "No"}\n");

  
  }
  void borrow(){
    if(!isBorrowed){
      isBorrowed = true;
      print("$title has already been borrowed");
    } else {
      print("$title is available for borrowing");
    } 
  }
}

void main(){
  List<BookTracker> books = [];
  books.add(BookTracker("Mother", "M.Gorky", 1950));
  books.add(BookTracker("Rich Dad Poor Dad","Robert Kiyosaki", 1998));
  books.add(BookTracker("Nine Perfect Strangers","Liane Moriarty", 2018));
  books.add(BookTracker("Chozi La Heri","Asumpta K. Matei", 2014));
  books.add(BookTracker("Blossoms of The Savannah","H. R. Ole Kulet", 2018));
  books.add(BookTracker("Kaizen","Sarah Harvey", 2019));
  books.add(BookTracker("RDaughters Of The Moon","Lynne Ewing", 2000));

  for(var book in books){
    book.displayInfo();
  }

  print("\n ----Borrowed Books----\n");
  //Adds to the number of books that have been borrowed
  books[3].borrow();
  books[0].borrow();

  print("\n Available Books ");

  for(var book in books){
    if (!book. isBorrowed){
      book.displayInfo();
    }
  }

}