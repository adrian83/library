

export function urlParamValue(name) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(name);
}
