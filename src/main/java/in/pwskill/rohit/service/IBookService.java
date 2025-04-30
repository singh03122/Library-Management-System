package in.pwskill.rohit.service;

import java.util.List;
import java.util.Optional;

import in.pwskill.rohit.model.Book;

public interface IBookService {

	public List<Book> findAllBooks();
	
	public Book saveBook(Book book);

	public void deleteBookById(Integer id);

	public Optional<Book> findBookById(Integer id);
}
