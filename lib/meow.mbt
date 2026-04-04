///|
/// Meow a text
/// @param text The text to meow
pub fn say(text : String) -> Unit {
  let len = text.length()
  let lines = Array::make(len + 2, "-")
  let lines2 = Array::make(len + 2, "-")

  let ascii =
    $|  \{lines.join("")}
    $| < \{text} >
    $|  \{lines2.join("")}
    $|   /\{'\\'} /\{'\\'}  ((
    $| =( ^x^ )= ))
    $| --m---m--

  println(ascii)
}

///|
pub fn success(text : String) -> Unit {
  say(text)
}

///|
pub fn error(text : String) -> Unit {
  say(text)
}

///|
pub fn info(text : String) -> Unit {
  say(text)
}

///|
pub fn warn(text : String) -> Unit {
  say(text)
}
