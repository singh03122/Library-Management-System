package in.pwskill.rohit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import in.pwskill.rohit.model.Book;
import in.pwskill.rohit.service.IBookService;

@Controller
public class LibraryController {

	@Autowired
	private IBookService service;
	
	@GetMapping("/")
	public String showPage() {
		return "redirect:new-book";
	}
	
	@GetMapping("/disp")
	public String showAllBooks(Model model) {
		model.addAttribute("books",service.findAllBooks());
		return "books";
	}
	
	@GetMapping("/new-book")
	public String showBookCreationForm(Model model) {
		model.addAttribute("book", new Book());
		
		return "new-book";
	}
	@GetMapping("/books")
	public String getAllBooks(Model model) {
	    model.addAttribute("books", service.findAllBooks());
	    return "books";
	}

	@PostMapping("/add")
	public String addNewBook(@ModelAttribute Book book, Model model) {
		System.out.println(book);
		service.saveBook(book);
		model.addAttribute("books", service.findAllBooks());
		return "books";
	}
	
	@GetMapping("/{id}")
    public String showBookById(@PathVariable Integer id, Model model) {
    	Book book = service.findBookById(id).orElseThrow(() -> new IllegalArgumentException("InvalBookId  id :: " + id));
    	model.addAttribute("book", book);
    	
    	return "edit-book";
    }
    
    @PostMapping("/{id}/delete")
    public String deleteBookById(@PathVariable Integer id , Model model) {
    	service.findBookById(id).orElseThrow(() -> new IllegalArgumentException("Invalid Book id : " + id));
    	service.deleteBookById(id);
    	model.addAttribute("books", service.findAllBooks());
    	return "books";
    }
    
    @PostMapping("/{id}/update")
    public String updateBook(@PathVariable Integer id, @ModelAttribute Book book,  Model model) {
    	service.findBookById(id).orElseThrow(() -> new IllegalArgumentException("Invalid Book id :: " + id));
    	service.saveBook(book);
    	model.addAttribute("books", service.findAllBooks());
    	
    	return "books";
    }
    // above are doing same which below will work...
//    @PostMapping("/update")
//    public String updateBook(@ModelAttribute Book book, Model model) {
//        service.saveBook(book); // will update if bookid exists
//        model.addAttribute("books", service.findAllBooks());
//        return "books";
//    }

}
