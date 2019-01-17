workflow "New workflow" {
  on = "push"
  resolves = ["1"]
}

workflow "New workflow 1" {
  on = "push"
}

action "1" {
  uses = "1"
}
