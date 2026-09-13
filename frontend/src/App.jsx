import { useCallback, useEffect, useMemo, useState } from 'react';
import * as api from './api.js';
import TopBar from './components/TopBar.jsx';
import BooksTable from './components/BooksTable.jsx';
import BottomBar from './components/BottomBar.jsx';
import AddBookModal from './components/AddBookModal.jsx';
import EditBookModal from './components/EditBookModal.jsx';
import DeleteConfirmModal from './components/DeleteConfirmModal.jsx';

export default function App() {
  const [categories, setCategories] = useState([]);

  const [categoryId, setCategoryId] = useState('');
  const [selectedSubcategoryIds, setSelectedSubcategoryIds] = useState([]);

  const [sortParam, setSortParam] = useState('title');
  const [sortDir, setSortDir] = useState('asc');
  const [pageNo, setPageNo] = useState(0);
  const [pageSize, setPageSize] = useState(20);

  const [page, setPage] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const [addOpen, setAddOpen] = useState(false);
  const [bookToEdit, setBookToEdit] = useState(null);
  const [bookToDelete, setBookToDelete] = useState(null);

  useEffect(() => {
    api.getCategories().then(setCategories).catch((e) => setError(e.message));
  }, []);

  const loadBooks = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const result = await api.getBooks({
        pageNo,
        pageSize,
        sortParam,
        sortDir,
        categoryId,
        subcategoryIds: selectedSubcategoryIds,
      });
      setPage(result);
      if (result.totalPages > 0 && pageNo > result.totalPages - 1) {
        setPageNo(result.totalPages - 1);
      }
    } catch (e) {
      setError(e.message);
      setPage(null);
    } finally {
      setLoading(false);
    }
  }, [pageNo, pageSize, sortParam, sortDir, categoryId, selectedSubcategoryIds]);

  useEffect(() => {
    loadBooks();
  }, [loadBooks]);

  const subcategories = useMemo(() => {
    const category = categories.find((c) => String(c.categoryId) === categoryId);
    return category ? category.subcategories : [];
  }, [categories, categoryId]);

  const books = page ? page.content : [];

  function handleCategoryChange(value) {
    setCategoryId(value);
    setSelectedSubcategoryIds([]);
    setPageNo(0);
  }

  function handleSubcategoriesChange(value) {
    setSelectedSubcategoryIds(value);
    setPageNo(0);
  }

  function handleSortParamChange(value) {
    setSortParam(value);
    setPageNo(0);
  }

  function handleSortDirChange(value) {
    setSortDir(value);
    setPageNo(0);
  }

  function handlePageSizeChange(value) {
    setPageSize(value);
    setPageNo(0);
  }

  function afterChange() {
    setAddOpen(false);
    setBookToEdit(null);
    setBookToDelete(null);
    loadBooks();
  }

  return (
    <div className="app">
      <h1>Home Library</h1>

      {error && <div className="error-bar">{error}</div>}

      <TopBar
        categories={categories}
        categoryId={categoryId}
        onCategoryChange={handleCategoryChange}
        subcategories={subcategories}
        selectedSubcategoryIds={selectedSubcategoryIds}
        onSubcategoriesChange={handleSubcategoriesChange}
        sortParam={sortParam}
        onSortParamChange={handleSortParamChange}
        sortDir={sortDir}
        onSortDirChange={handleSortDirChange}
        onAddClick={() => setAddOpen(true)}
      />

      {loading && <div className="loading">Wczytywanie…</div>}

      {!loading && books.length === 0 && (
        <div className="empty">Brak książek do wyświetlenia.</div>
      )}

      {!loading && books.length > 0 && (
        <BooksTable
          books={books}
          ordinalOffset={pageNo * pageSize}
          onEdit={setBookToEdit}
          onDelete={setBookToDelete}
        />
      )}

      <BottomBar
        pageNo={pageNo}
        totalPages={page ? page.totalPages : 0}
        totalElements={page ? page.totalElements : 0}
        pageSize={pageSize}
        onPageChange={setPageNo}
        onPageSizeChange={handlePageSizeChange}
      />

      {addOpen && (
        <AddBookModal
          categories={categories}
          onClose={() => setAddOpen(false)}
          onSaved={afterChange}
        />
      )}

      {bookToEdit && (
        <EditBookModal
          book={bookToEdit}
          categories={categories}
          onClose={() => setBookToEdit(null)}
          onSaved={afterChange}
        />
      )}

      {bookToDelete && (
        <DeleteConfirmModal
          book={bookToDelete}
          onClose={() => setBookToDelete(null)}
          onDeleted={afterChange}
        />
      )}
    </div>
  );
}
