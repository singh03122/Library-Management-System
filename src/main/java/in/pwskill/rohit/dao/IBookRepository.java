package in.pwskill.rohit.dao;

import org.springframework.data.repository.CrudRepository;

import in.pwskill.rohit.model.Book;

public interface IBookRepository extends CrudRepository<Book, Integer> {

}
