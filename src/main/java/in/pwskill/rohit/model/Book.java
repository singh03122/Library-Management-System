package in.pwskill.rohit.model;

import java.io.Serializable;
import jakarta.persistence.*;

@Entity
@Table(name = "BOOK")
public class Book implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    private Integer bookid;

    @Column(name = "BOOK_NAME", length = 40)
    private String book_Name;

    @Column(name = "AUTHOR_ID")
    private Integer author_Id;

    @Column(name = "AUTHOR_NAME", length = 30)
    private String author_Name;

    @Column(name = "COURSE", length = 30)
    private String course;

    // Default constructor
    public Book() {
        System.out.println("Book.class is loading...");
    }

	public Integer getBookid() {
		System.out.println("Book.getBookid()");
		return bookid;
	}

	public void setBookid(Integer bookid) {
		this.bookid = bookid;
		System.out.println("Book.setBookid()");
	}

	public String getBook_Name() {
		System.out.println("Book.getBook_Name()");
		return book_Name;
	}

	public void setBook_Name(String book_Name) {
		this.book_Name = book_Name;
		System.out.println("Book.setBook_Name()");
	}

	public Integer getAuthor_Id() {
		System.out.println("Book.getAuthor_Id()");
		return author_Id;
	}

	public void setAuthor_Id(Integer author_Id) {
		this.author_Id = author_Id;
		System.out.println("Book.setAuthor_Id()");
		
	}

	public String getAuthor_Name() {
		System.out.println("Book.getAuthor_Name()");
		return author_Name;
	}

	public void setAuthor_Name(String author_Name) {
		this.author_Name = author_Name;
		System.out.println("Book.setAuthor_Name()");
	}

	public String getCourse() {
		System.out.println("Book.getCourse()");
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
		System.out.println("Book.setCourse()");
		
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		System.out.println("Book.toString()");
		return "Book [bookid=" + bookid + ", book_Name=" + book_Name + ", author_Id=" + author_Id + ", author_Name="
				+ author_Name + ", Course=" + course + "]";
	}

   
}
