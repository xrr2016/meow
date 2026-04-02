// Main package file for your library code.
// Put public APIs and shared helpers here.
// Keep blocks small and focused for easy refactors.

///|
pub fn meow(argv : Array[String]) -> Unit {
  let text = if argv.length() < 2 { "Meow" } else { argv[1] }
  let ascii =
    $|  \{text}!!!
    $|   /\{'\\'} /\{'\\'}  ((
    $| =( ^x^ )= ))
    $| ---m-m----

  println(ascii)
}
