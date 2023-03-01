package com.houselibrary.repository;

import com.houselibrary.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {

    List<Book> findBySubcategoryId(Long subcategoryId);
}
