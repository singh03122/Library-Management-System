package in.pwskill.rohit.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import in.pwskill.rohit.dao.IBookRepository;
import in.pwskill.rohit.model.Book;

@Service
public class BookServiceImple implements IBookService {

	@Autowired
	private IBookRepository repo;
	
	@Override
	public List<Book> findAllBooks() {
		
		return StreamSupport.stream(repo.findAll().spliterator(), false).collect(Collectors.toList());
	}

	@Override
	public Book saveBook(Book book) {
		if(!repo.existsById(book.getBookid())) {
		return repo.save(book);
		}
		else {
			return repo.save(book);
 		}
	}

	@Override
	public void deleteBookById(Integer id) {
       repo.deleteById(id);
	}

	@Override
	public Optional<Book> findBookById(Integer id) {	
		return repo.findById(id);
	}

}
