package com.houselibrary.service.impl;

import com.houselibrary.dto.request.SubcategoryRequest;
import com.houselibrary.dto.response.BookDto;
import com.houselibrary.dto.response.SubcategoryDto;
import com.houselibrary.exception.HouseLibraryException;
import com.houselibrary.mapper.ModelMapper;
import com.houselibrary.model.Book;
import com.houselibrary.model.Category;
import com.houselibrary.model.Priority;
import com.houselibrary.model.Subcategory;
import com.houselibrary.repository.BookRepository;
import com.houselibrary.repository.CategoryRepository;
import com.houselibrary.repository.SubcategoryRepository;
import com.houselibrary.service.SubcategoryService;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.data.domain.*;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@RequiredArgsConstructor
@Setter
public class SubcategoryServiceImpl implements SubcategoryService {

  private final SubcategoryRepository subcategoryRepository;
  private final CategoryRepository categoryRepository;
  private final BookRepository bookRepository;
  private final ModelMapper mapper;


  @Override
  public SubcategoryDto addSubcategory(SubcategoryRequest subcategoryRequest) {
    Category category = findCategory(subcategoryRequest.getCategoryId());
    Subcategory subcategory = new Subcategory(subcategoryRequest.getSubcategoryName(), category);
    subcategoryRepository.save(subcategory);
    return mapper.mapToSubcategoryDto(subcategory);
  }

  @Override
  public SubcategoryDto getSubcategory(Long subcategoryId) {
    Subcategory subcategory = findSubcategory(subcategoryId);
    return mapper.mapToSubcategoryDto(subcategory);
  }

  @Override
  public SubcategoryDto updateSubcategory(Long subcategoryId, SubcategoryRequest subcategoryRequest) {
    Subcategory subcategory = findSubcategory(subcategoryId);
    Category category = findCategory(subcategoryRequest.getCategoryId());
    subcategory.setName(subcategoryRequest.getSubcategoryName());
    subcategory.setCategory(category);
    subcategoryRepository.save(subcategory);
    return mapper.mapToSubcategoryDto(subcategory);
  }

  @Override
  public void deleteSubcategory(Long subcategoryId) {
    Subcategory subcategory = findSubcategory(subcategoryId);
    removeAllBooksFromSubcategory(subcategory);
    subcategoryRepository.delete(subcategory);
  }

  @Override
  public List<SubcategoryDto> getAllSubcategories() {
    List<Subcategory> subcategories = subcategoryRepository.findAll();
    return mapper.mapToSubcategoryDtoList(subcategories);
  }

  @Override
  public List<BookDto> getSubcategoryBooks(
          Long subcategoryId, int pageNo, int pageSize, String sortParam, String sortDir, Integer priorityValue) {

    Sort sort =  Sort.by(sortParam);
    sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name())
            ? sort.ascending() : sort.descending();
    Pageable pageable = PageRequest.of(pageNo, pageSize, sort);
    Page<Book> bookPage;
    if (priorityValue != null) {
      try {
        Priority priority = Priority.fromValue(priorityValue);
        bookPage = bookRepository.findBySubcategoryIdAndPriority(subcategoryId, priority, pageable);
      } catch (IllegalArgumentException ex) {
        throw new HouseLibraryException(HttpStatus.BAD_REQUEST, "Invalid priority");
      }
    } else {
      bookPage = bookRepository.findBySubcategoryId(subcategoryId, pageable);
    }
    List<Book> books = bookPage.getContent();
    return mapper.mapToBookDtoList(books);
  }

  private void removeAllBooksFromSubcategory(Subcategory subcategory) {
    for (Book book : subcategory.getBooks()) {
      book.setSubcategory(null);
    }
  }

  private Subcategory findSubcategory(Long subcategoryId) {
    return subcategoryRepository.findById(subcategoryId)
            .orElseThrow(() -> new HouseLibraryException(
                    HttpStatus.NOT_FOUND, "Subcategory with given ID does not exist"));
  }

  private Category findCategory(Long categoryId) {
    return categoryRepository.findById(categoryId)
            .orElseThrow(() -> new HouseLibraryException(
                    HttpStatus.NOT_FOUND, "Category with given ID does not exist"));
  }
}
