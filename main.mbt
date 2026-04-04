///|
/// Terminal meow
fn main {
  guard @env.args().length() >= 2 else { println("Please provide a me text") }

  @lib.success(@env.args()[1])
}
