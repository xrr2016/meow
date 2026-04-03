///|
fn main {
  let text = if @env.args().length() < 2 { "Meow" } else { @env.args()[1] }
  @lib.say(text)
}
