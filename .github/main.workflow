workflow "New workflow" {
  on = "push"
  resolves = [
    "Hello World",
    "Hello World-1",
  ]
}

action "Hello World" {
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

action "Hello World-1" {
  uses = "./action"
  needs = ["Helloworld-issue"]
}
