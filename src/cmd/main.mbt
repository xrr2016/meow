///|
/// Terminal meow
fn main {
  guard @env.args().length() >= 2 else {
    println("Please provide a me text")
  }

  @meow.say(@env.args()[1])
}
