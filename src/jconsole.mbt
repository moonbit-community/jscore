///|
fn JConsole::_log(self : JConsole, data : JAny) = "Console" "log"

///|
fn JConsole::_info(self : JConsole, data : JAny) = "Console" "info"

///|
fn JConsole::_debug(self : JConsole, data : JAny) = "Console" "debug"

///|
fn JConsole::_warn(self : JConsole, data : JAny) = "Console" "warn"

///|
fn JConsole::_error(self : JConsole, data : JAny) = "Console" "error"

///|
fn JConsole::_dir(self : JConsole, data : JAny) = "Console" "dir"

///|
fn JConsole::_dirxml(self : JConsole, data : JAny) = "Console" "dirxml"

///|
fn JConsole::_assert_(self : JConsole, assertion : Bool, data : JAny) = "Console" "assert"

///|
fn JConsole::_table(self : JConsole, data : JAny) = "Console" "table"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/log_static)
pub fn JConsole::log[T : Js](self : JConsole, data : T) -> Unit {
  self._log(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/info_static)
pub fn JConsole::info[T : Js](self : JConsole, data : T) -> Unit {
  self._info(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/debug_static)
pub fn JConsole::debug[T : Js](self : JConsole, data : T) -> Unit {
  self._debug(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/warn_static)
pub fn JConsole::warn[T : Js](self : JConsole, data : T) -> Unit {
  self._warn(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/error_static)
pub fn JConsole::error[T : Js](self : JConsole, data : T) -> Unit {
  self._error(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/dir_static)
pub fn JConsole::dir[T : Js](self : JConsole, data : T) -> Unit {
  self._dir(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/dirxml_static)
pub fn JConsole::dirxml[T : Js](self : JConsole, data : T) -> Unit {
  self._dirxml(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/time_static)
pub fn JConsole::time(self : JConsole, label : JString) = "Console" "time"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/timeLog_static)
pub fn JConsole::timeLog(self : JConsole, label : JString) = "Console" "timeLog"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/timeEnd_static)
pub fn JConsole::timeEnd(self : JConsole, label : JString) = "Console" "timeEnd"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/trace_static)
pub fn JConsole::trace(self : JConsole) = "Console" "trace"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/assert_static)
pub fn JConsole::assert_[T : Js](
  self : JConsole,
  assertion : Bool,
  data : T
) -> Unit {
  self._assert_(assertion, data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/clear_static)
pub fn JConsole::clear(self : JConsole) = "Console" "clear"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/count_static)
pub fn JConsole::count(self : JConsole, label : JString) = "Console" "count"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/countReset_static)
pub fn JConsole::countReset(self : JConsole, label : JString) = "Console" "countReset"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/group_static)
pub fn JConsole::group(self : JConsole, label : JString) = "Console" "group"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/groupEnd_static)
pub fn JConsole::groupEnd(self : JConsole, label : JString) = "Console" "groupEnd"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/table_static)
/// TODO: add support for Object
pub fn JConsole::table[T](self : JConsole, data : JArray[T]) -> Unit {
  self._table(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/groupCollapsed_static)
pub fn JConsole::groupCollapsed(self : JConsole, label : JString) = "Console" "groupCollapsed"
