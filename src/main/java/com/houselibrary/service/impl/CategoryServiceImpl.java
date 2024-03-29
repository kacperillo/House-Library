package com.houselibrary.service.impl;

import com.houselibrary.dto.request.CategoryRequest;
import com.houselibrary.dto.response.BookDto;
import com.houselibrary.dto.response.CategoryDto;
import com.houselibrary.dto.response.SubcategoryDto;
import com.houselibrary.exception.HouseLibraryException;
import com.houselibrary.mapper.ModelMapper;
import com.houselibrary.model.Book;
import com.houselibrary.model.Category;
import com.houselibrary.model.Priority;
import com.houselibrary.model.Subcategory;
import com.houselibrary.repository.BookRepository;
import com.houselibrary.repository.CategoryRepository;
import com.houselibrary.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.*;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

  private final CategoryRepository categoryRepository;
  private final BookRepository bookRepository;
  private final ModelMapper mapper;

  @Override
  public CategoryDto addCategory(CategoryRequest categoryRequest) {
    Category category = new Category(categoryRequest.getCategoryName());
    categoryRepository.save(category);
    return mapper.mapToCategoryDto(category);
  }

  @Override
  public CategoryDto getCategory(Long categoryId) {
    Category category = findCategory(categoryId);
    return mapper.mapToCategoryDto(category);
  }

  @Override
  public CategoryDto updateCategory(Long categoryId, CategoryRequest categoryRequest) {
    Category category = findCategory(categoryId);
    category.setName(categoryRequest.getCategoryName());
    categoryRepository.save(category);
    return mapper.mapToCategoryDto(category);
  }

  @Override
  public void deleteCategory(Long categoryId) {
    Category category = findCategory(categoryId);
    removeAllBooksFromCategory(category);
    categoryRepository.delete(category);
  }

  @Override
  public List<CategoryDto> getAllCategories() {
    List<Category> categories = categoryRepository.findAll();
    return mapper.mapToCategoryDtoList(categories);
  }

  @Override
  public List<BookDto> getCategoryBooks(
          Long categoryId, int pageNo, int pageSize, String sortParam, String sortDir, Integer priorityValue) {

    Sort sort = Sort.by(sortParam);
    sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name())
            ? sort.ascending() : sort.descending();
    Pageable pageable = PageRequest.of(pageNo, pageSize, sort);
    Page<Book> bookPage;
    if (priorityValue != null) {
      try {
        Priority priority = Priority.fromValue(priorityValue);
        bookPage = bookRepository.findByCategoryIdAndPriority(categoryId, priority, pageable);
      } catch (IllegalArgumentException ex) {
        throw new HouseLibraryException(HttpStatus.BAD_REQUEST, "Invalid priority");
      }
    } else {
      bookPage = bookRepository.findByCategoryId(categoryId, pageable);
    }
    List<Book> books = bookPage.getContent();

    return mapper.mapToBookDtoList(books);
  }

  @Override
  public List<SubcategoryDto> getCategorySubcategories(Long categoryId) {
    Category category = findCategory(categoryId);
    List<Subcategory> subcategories = category.getSubcategories();
    return mapper.mapToSubcategoryDtoList(subcategories);
  }

  private void removeAllBooksFromCategory(Category category) {
    for (Book book : category.getBooks()) {
      book.setSubcategory(null);
    }
  }

  private Category findCategory(Long categoryId) {
    return categoryRepository.findById(categoryId)
            .orElseThrow(() -> new HouseLibraryException(
                    HttpStatus.NOT_FOUND, "Category with given ID does not exist"));
  }
}
