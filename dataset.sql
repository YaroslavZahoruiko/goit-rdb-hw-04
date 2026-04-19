USE `LibraryManagement`;
INSERT INTO authors (author_name)
VALUES ('Taras Shevchenko'),
       ('Lesya Ukrainka');

INSERT INTO genres (genre_name)
VALUES ('Poetry'),
       ('Drama');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES ('Kobzar', 1940, 1, 1),
       ('Forest Song', 1911, 2, 2);

INSERT INTO users (username, email)
VALUES ('yaroslav', 'yaroslav@example.com'),
       ('olena', 'olena@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES (1, 1, '2026-04-01', '2026-04-15'),
       (2, 2, '2026-04-05', NULL);
