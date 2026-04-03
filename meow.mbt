///|
pub fn meow(text : String) -> Unit {
  let ascii =
    $|  _______
    $| < \{text} >
    $|  -------
    $|          /\{'\\'} /\{'\\'}  ((
    $|        =( ^x^ )= ))
    $|       ---m---m---

  println(ascii)
}

///|
fn main {
  let text = if @env.args().length() < 2 { "Meow" } else { @env.args()[1] }
  meow(text)
}
