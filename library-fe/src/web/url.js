
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

export function editBookUrl(bookId, isNew=false) {
    var baseUrl = `/books/edit/${bookId}`;
    return isNew ? baseUrl + "?new=" + isNew : baseUrl;
}

export function editAuthorUrl(authorId, isNew=false) {
    var baseUrl = `/authors/edit/${authorId}`;
    return isNew ? baseUrl + "?new=" + isNew : baseUrl;
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
