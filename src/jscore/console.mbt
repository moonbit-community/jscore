///|
fn Console::_log(self : Console, data : Any) = "illusory0x0_core_Console" "log"

///|
fn Console::_info(self : Console, data : Any) = "illusory0x0_core_Console" "info"

///|
fn Console::_debug(self : Console, data : Any) = "illusory0x0_core_Console" "debug"

///|
fn Console::_warn(self : Console, data : Any) = "illusory0x0_core_Console" "warn"

///|
fn Console::_error(self : Console, data : Any) = "illusory0x0_core_Console" "error"

///|
fn Console::_dir(self : Console, data : Any) = "illusory0x0_core_Console" "dir"

///|
fn Console::_dirxml(self : Console, data : Any) = "illusory0x0_core_Console" "dirxml"

///|
fn Console::_assert_(self : Console, assertion : Bool, data : Any) = "illusory0x0_core_Console" "assert"

///|
fn Console::_table(self : Console, data : Any) = "illusory0x0_core_Console" "table"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/log_static)
pub fn Console::log[T : Js](self : Console, data : T) -> Unit {
  self._log(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/info_static)
pub fn Console::info[T : Js](self : Console, data : T) -> Unit {
  self._info(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/debug_static)
pub fn Console::debug[T : Js](self : Console, data : T) -> Unit {
  self._debug(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/warn_static)
pub fn Console::warn[T : Js](self : Console, data : T) -> Unit {
  self._warn(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/error_static)
pub fn Console::error[T : Js](self : Console, data : T) -> Unit {
  self._error(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/dir_static)
pub fn Console::dir[T : Js](self : Console, data : T) -> Unit {
  self._dir(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/dirxml_static)
pub fn Console::dirxml[T : Js](self : Console, data : T) -> Unit {
  self._dirxml(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/time_static)
pub fn Console::time(self : Console, label : String_) = "illusory0x0_core_Console" "time"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/timeLog_static)
pub fn Console::timeLog(self : Console, label : String_) = "illusory0x0_core_Console" "timeLog"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/timeEnd_static)
pub fn Console::timeEnd(self : Console, label : String_) = "illusory0x0_core_Console" "timeEnd"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/trace_static)
pub fn Console::trace(self : Console) = "illusory0x0_core_Console" "trace"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/assert_static)
pub fn Console::assert_[T : Js](
  self : Console,
  assertion : Bool,
  data : T
) -> Unit {
  self._assert_(assertion, data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/clear_static)
pub fn Console::clear(self : Console) = "illusory0x0_core_Console" "clear"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/count_static)
pub fn Console::count(self : Console, label : String_) = "illusory0x0_core_Console" "count"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/countReset_static)
pub fn Console::countReset(self : Console, label : String_) = "illusory0x0_core_Console" "countReset"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/group_static)
pub fn Console::group(self : Console, label : String_) = "illusory0x0_core_Console" "group"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/groupEnd_static)
pub fn Console::groupEnd(self : Console, label : String_) = "illusory0x0_core_Console" "groupEnd"

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/table_static)
/// TODO: add support for Object
pub fn Console::table[T](self : Console, data : Array[T]) -> Unit {
  self._table(data.to_any())
}

///| [MDN](https://developer.mozilla.org/en-US/docs/Web/API/console/groupCollapsed_static)
pub fn Console::groupCollapsed(self : Console, label : String_) = "illusory0x0_core_Console" "groupCollapsed"
