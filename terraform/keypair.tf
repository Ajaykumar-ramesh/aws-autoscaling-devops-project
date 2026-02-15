resource "aws_key_pair" "devops_key" {
  key_name   = "devops-ansible-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
