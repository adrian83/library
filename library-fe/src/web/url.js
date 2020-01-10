
export function booksBeUrl() {
    return `/api/v1/books`;
}

export function bookBeUrl(bookId) {
    return `/api/v1/books/${bookId}`;
}

export function createBookUrl() {
    return `/books/create/`;
}

export function editBookUrl(bookId) {
    return `/books/edit/${bookId}`;
}

export function showBookUrl(bookId) {
    return `/books/show/${bookId}`;
}

export function listBooksUrl() {
    return `/books/list`;
}

export function listAuthors() {
    return `/authors/`;
}
