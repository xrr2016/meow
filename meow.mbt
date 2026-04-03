///|
pub fn meow(argv : Array[String]) -> Unit {
  let text = if argv.length() < 2 { "Meow" } else { argv[1] }
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
  meow(@env.args())
}
