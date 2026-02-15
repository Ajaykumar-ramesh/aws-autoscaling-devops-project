resource "aws_lb" "web_alb" {
  name               = "devops-web-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [module.security.sg_id]
  subnets = module.network.subnet_ids
}

resource "aws_lb_target_group" "web_tg" {
  name     = "web-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.network.vpc_id
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.web_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_tg.arn
  }
}
