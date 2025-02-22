const [print_char, flush] = (() => {
  let buffer : Char[] = [];
  function flush() {
    if (buffer.length > 0) {
      console.log(new TextDecoder("utf-16").decode(new Uint16Array(buffer).valueOf()));
      buffer = [];
    }
  }
  function log(ch : Char) {
    if (ch == '\n'.charCodeAt(0)) { flush(); }
    else if (ch == '\r'.charCodeAt(0)) { /* noop */ }
    else { buffer.push(ch); }
  }
  return [log, flush]
})();

export { print_char, flush }