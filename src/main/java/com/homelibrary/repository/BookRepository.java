package com.homelibrary.repository;

import com.homelibrary.model.Book;
import java.util.Collection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Integer> {

    Page<Book> findBySubcategoryCategoryId(Integer categoryId, Pageable pageable);
    Page<Book> findBySubcategoryIdIn(Collection<Integer> subcategoryIds, Pageable pageable);
    boolean existsBySubcategoryCategoryId(Integer categoryId);
    boolean existsBySubcategoryId(Integer subcategoryId);
}
