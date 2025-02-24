-- Insertar datos en la tabla publishers
INSERT INTO publishers (publisher_id, name)
VALUES (1, 'Publisher Name')
ON CONFLICT (publisher_id) DO NOTHING;

INSERT INTO publishers (publisher_id, name)
VALUES (2, 'Another Publisher')
ON CONFLICT (publisher_id) DO NOTHING;

-- Insertar datos en la tabla authors
INSERT INTO authors (author_id, first_name, middle_name, last_name)
VALUES (1, 'John', 'Middle', 'Doe')
ON CONFLICT (author_id) DO NOTHING;

INSERT INTO authors (author_id, first_name, middle_name, last_name)
VALUES (2, 'Jane', NULL, 'Smith')
ON CONFLICT (author_id) DO NOTHING;

-- Insertar datos en la tabla books
INSERT INTO books (book_id, title, total_pages, rating, isbn, published_date, publisher_id)
VALUES (1, 'Book Title 1', 300, 4.5, '1234567890123', '2023-01-01', 1)
ON CONFLICT (book_id) DO NOTHING;

-- Insertar datos en la tabla book_authors
INSERT INTO book_authors (book_id, author_id)
VALUES (1, 1)
ON CONFLICT (book_id, author_id) DO NOTHING;

INSERT INTO book_authors (book_id, author_id)
VALUES (1, 2)
ON CONFLICT (book_id, author_id) DO NOTHING;
