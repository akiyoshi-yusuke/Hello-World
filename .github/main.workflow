workflow "New workflow" {
  on = "push"
  resolves = ["Hello World"]
}

action "Hello World" {
  uses = "./action"
  env = {
    MY_NAME = "akiyoshi-yusuke"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}
