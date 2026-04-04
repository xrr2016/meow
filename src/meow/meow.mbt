///|
/// Meow a text
/// @param text The text to meow
pub fn say(text : String) -> Unit {
  let ascii =
    $|  _______
    $| < \{text} >
    $|  -------
    $|          /\{'\\'} /\{'\\'}  ((
    $|        =( ^x^ )= ))
    $|       ---m---m---

  println(ascii)
}

pub fn success(text : String) -> Unit {
  say(text)
}

pub fn error(text : String) -> Unit {
  say(text)
}

pub fn info(text : String) -> Unit {
  say(text)
}

pub fn warn(text : String) -> Unit {
  say(text)
}