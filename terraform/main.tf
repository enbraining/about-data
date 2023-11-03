resource "local_file" "abc" {
    content = "abc!"
    filename = "${path.module}/abc.txt"
}

resource "local_file" "xyz" {
  content =  "xyz!"
  filename = "${path.module}/xyz.txt"
}