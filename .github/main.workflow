workflow "New workflow" {
  on = "push"
  resolves = [
    "Hello World",
    "Hello World-1",
  ]
}

action "Hello World1" {
  uses = "./action"
  env = {
    MY_NAME = "akiyoshi-yusuke"
  }
  args = "\"Hello world, I'm $MY_NAME!\""
}

action "Helloworld-issue" {
  uses = "actions/bin/filter@b2bea0749eed6beb495a8fa194c071847af60ea1"
  runs = "issues"
  args = "args = \"\\\"Hello world, I'm $MY_NAME!\\\"\""
}

