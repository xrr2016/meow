///|
/// Terminal meow
fn main {
  guard @env.args().length() <= 1 else {
    println("Please provide a me text")
    ()
  }

  @meow.say(@env.args()[1])
}
