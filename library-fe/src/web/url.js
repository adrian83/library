

export function tablesBeUrl() {
    return `/tables`;
}

export function tableBeUrl(tableId) {
    return `/tables/${tableId}`;
}

export function stageBeUrl(tableId, stageId) {
    return `/tables/${tableId}/stages/${stageId}`;
}

export function stagesBeUrl(tableId) {
    return `/tables/${tableId}/stages`;
}

export function editTableUrl(tableId) {
    return `/tables/edit/${tableId}`;
}

export function showTableUrl(tableId) {
    return `/tables/show/${tableId}`;
}

export function createTableUrl() {
    return `/tables/create/`;
}

export function listTablesUrl() {
    return `/tables/list/`;
}

export function createStageUrl(tableId) {
    return `/tables/show/${tableId}/stages/create`;
}

export function editStageUrl(tableId, stageId) {
    return `/tables/show/${tableId}/stages/edit/${stageId}`;
}

export function healthUrl() {
    return `/health/`;
}


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
