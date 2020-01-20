
export function booksBeUrl() {
    return `/api/v1/books`;
}

export function bookBeUrl(bookId) {
    return `/api/v1/books/${bookId}`;
}

export function authorsBeUrl() {
    return `/api/v1/authors`;
}

export function authorBeUrl(authorId) {
    return `/api/v1/authors/${authorId}`;
}

export function createBookUrl() {
    return `/books/create/`;
}

export function createAuthorUrl() {
    return `/authors/create/`;
}

export function editBookUrl(bookId) {
    return `/books/edit/${bookId}`;
}

export function editAuthorUrl(authorId) {
    return `/authors/edit/${authorId}`;
}

export function showBookUrl(bookId) {
    return `/books/show/${bookId}`;
}

export function showAuthorUrl(authorId) {
    return `/authors/show/${authorId}`;
}

export function listBooksUrl() {
    return `/books/list`;
}

export function listAuthorsUrl() {
    return `/authors/list`;
}
