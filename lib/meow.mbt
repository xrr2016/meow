///|
/// Get the color code for the terminal
/// @param code The color code
/// @return The color code
/// @example
/// color("Hello", 32)
/// @return
/// \u001B[32mHello\u001B[0m
fn color(text : String, status? : Status = Status::Normal) -> String {
  let code = match status {
    Status::Success => 32
    Status::Normal => 30
    Status::Error => 31
    Status::Info => 34
    Status::Warn => 33
  }

  "\u001B[\{code}m\{text}\u001B[0m"
}

///|
fn bold(text : String) -> String {
  "\u001B[1m\{text}\u001B[22m"
}

///|
enum Status {
  Success
  Error
  Info
  Warn
  Normal
}

///|
/// Meow a text
/// @param text The text to meow
pub fn say(text : String, status? : Status = Status::Normal) -> Unit {
  let len = text.length()
  let lines = Array::make(len + 2, "-")
  let lines2 = Array::make(len + 2, "-")

  let ascii =
    $|  \{lines.join("")}
    $| < \{bold(color(text, status=status))} >
    $|  \{lines2.join("")}
    $|         /\{'\\'} /\{'\\'}  ((
    $|       =( ^x^ )= ))
    $|       --m---m--

  println(ascii)
}

///|
pub fn success(text : String) -> Unit {
  say(text, status=Status::Success)
}

///|
pub fn error(text : String) -> Unit {
  say(text, status=Status::Error)
}

///|
pub fn info(text : String) -> Unit {
  say(text, status=Status::Info)
}

///|
pub fn warn(text : String) -> Unit {
  say(text, status=Status::Warn)
}
